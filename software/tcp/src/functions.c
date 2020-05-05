
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>
#include "sys/alt_stdio.h"
#include "sys/alt_irq.h"
#include "system.h"
#include "../include/seg.h"
#include <altera_avalon_timer.h>
#include <altera_avalon_timer_regs.h>
#include <altera_avalon_sgdma.h>
#include <altera_avalon_sgdma_descriptor.h>	//include the sgdma descriptor
#include <altera_avalon_sgdma_regs.h>		//include the sgdma registers
#include <altera_avalon_pio_regs.h>			//include the PIO registers

// Function Prototypes
void rx_ethernet_isr (void *context);
void tx_ethernet_isr (void *context);
char * receive(int device);
unsigned char rx_data[1024] = { 0 };	// Create a receive frame vector
unsigned char tx_data[1024] = {0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xC8,0x16,0x0B,0x93,0x67,0xDA,0x00,0x2E}; 	//Transmit Frame
volatile int * tse = (int *) TSE_BASE;	// Triple-speed Ethernet MegaCore base address
int in = 0;

// Create sgdma transmit and receive devices
alt_sgdma_dev * sgdma_tx_dev;
alt_sgdma_dev * sgdma_rx_dev;

// Allocate descriptors in the descriptor_memory (onchip memory)
alt_sgdma_descriptor tx_descriptor		__attribute__ (( section ( ".descriptor_memory" )));
alt_sgdma_descriptor tx_descriptor_end	__attribute__ (( section ( ".descriptor_memory" )));

alt_sgdma_descriptor rx_descriptor  	__attribute__ (( section ( ".descriptor_memory" )));
alt_sgdma_descriptor rx_descriptor_end  __attribute__ (( section ( ".descriptor_memory" )));

int transmissionStatus = 0;

int transmit(int device, struct packet * pack){
	printf("transmit function\n");
	//Specify the addresses of the PHY devices to be accessed through MDIO interface
	if(!device){
		*(tse + 0x0F) = 0x10;
	}
	else {
		*(tse + 0x0F) = 0x11;
	}

	// Disable read and write transfers and wait
	*(tse + 0x02) = *(tse + 0x02) | 0x00800220;
	while ( *(tse + 0x02) != ( *(tse +0x02 ) | 0x00800220));

	//MAC FIFO Configuration
	*(tse + 0x09) = TSE_TRANSMIT_FIFO_DEPTH-16;//tx_section_empty
	*(tse + 0x0E ) = 0x03;//tx_almost_full
	*(tse + 0x0D ) = 0x08;//tx_almost_empty
	*(tse + 0x07 ) = TSE_RECEIVE_FIFO_DEPTH-16;//rx_section_empty
	*(tse + 0x0C ) = 0x08;//rx_almost_full
	*(tse + 0x0B ) = 0x08;//rx_almost_empty
	*(tse + 0x0A ) = 0x00;//tx_section_full
	*(tse + 0x08 ) = 0x00;//rx_section_full

	// Initialize the MAC address
	if(!device){ //first mac to check/initialize
		*(tse + 0x03) = 0x17231C00;
		*(tse + 0x04) = 0x0000CB4A;
	}
	else {
		//second MAC to check
		*(tse + 0x03) = 0x930B16C8;
		*(tse + 0x04) = 0x0000DA67;
	}
	// MAC function configuration
	*(tse + 0x05) = 1518;		//frame length - suggested from Altera (most common)
	*(tse + 0x17) = 12;			//tx_ipg_length or interpacket gap insertion
	*(tse + 0x06) = 0xFFFF;		//pause_quanta - used to initialize
	*(tse + 0x02) = 0x00800220;	//command_config register - must either be this or 0x008002220 to set reset

	// Software reset the PHY chip and wait
	*(tse + 0x02) =  0x00802220;
	alt_printf("Setting the reset tx");
	while ( *(tse + 0x02) != ( 0x00800220 ) ) printf(" ");
	//Enable read and write transfers, gigabit Ethernet operation and promiscuous mode

	*(tse + 0x02) = *(tse + 0x02) | 0x0000023B;
	while ( *(tse + 0x02) != ( *(tse + 0x02) | 0x0000023B ) );

	// Open the sgdma transmit device
	sgdma_tx_dev = alt_avalon_sgdma_open ("/dev/sgdma_tx");
	if (sgdma_tx_dev == NULL) {
		alt_printf ("Error: could not open scatter-gather dma transmit device\n");
		return -1;
	} else alt_printf ("Opened scatter-gather dma transmit device\n");

	memmove(tx_data+16, pack->sourceIP, 4);
	memmove(tx_data+20, pack->destIP, 4);
	memmove(tx_data+24, pack->payload->sourcePort, 2);
	memmove(tx_data+26, pack->payload->destPort, 2);
	memmove(tx_data+28, pack->payload->syn, 1);
	memmove(tx_data+29, pack->payload->fin, 1);
	memmove(tx_data+30, pack->payload->seqNum, 1);
	memmove(tx_data+31, pack->payload->ackNum, 1);
	memmove(tx_data+32, pack->payload->data, 1);
	memset(tx_data+33, 0, 28); //set size of memory 28 bytes

	// Set interrupts for the sgdma transmit device
	//sgdma_tx_dev searches for sgdma_tx device, returns null if none,
	alt_avalon_sgdma_register_callback(sgdma_tx_dev, (alt_avalon_sgdma_callback) tx_ethernet_isr, 0x00000014, NULL );

	// Create sgdma transmit descriptor
	alt_avalon_sgdma_construct_mem_to_stream_desc(&tx_descriptor, &tx_descriptor_end, (alt_u32 *)tx_data, 62, 0, 1, 1, 0);

	// Set up non-blocking transfer of sgdma transmit descriptor
	alt_avalon_sgdma_do_async_transfer(sgdma_tx_dev, &tx_descriptor);

	while (alt_avalon_sgdma_check_descriptor_status(&tx_descriptor) != 0);

	return transmissionStatus;
}

char * receive(int device){
	printf("receive function\n");
	// Open the sgdma receive device
	sgdma_rx_dev = alt_avalon_sgdma_open ("/dev/sgdma_rx");
	if (sgdma_rx_dev == NULL) {
		alt_printf ("Error: could not open scatter-gather dma receive device\n");
		//return -1;
	} else alt_printf ("Opened scatter-gather dma receive device\n");

	// Set interrupts for the sgdma receive device
	alt_avalon_sgdma_register_callback(sgdma_rx_dev, (alt_avalon_sgdma_callback) rx_ethernet_isr, 0x00000014, NULL );

	// Create sgdma receive descriptor
	alt_avalon_sgdma_construct_stream_to_mem_desc(&rx_descriptor, &rx_descriptor_end, (alt_u32 *)rx_data, 0, 0 );

	// Set up non-blocking transfer of sgdma receive descriptor
	alt_avalon_sgdma_do_async_transfer(sgdma_rx_dev, &rx_descriptor );

	//Specify the addresses of the PHY devices to be accessed through MDIO interface

	if(!device){
		*(tse + 0x0F) = 0x10;
	}
	else {
		*(tse + 0x0F) = 0x11;
	}

	// Disable read and write transfers and wait
	*(tse + 0x02) = *(tse + 0x02) | 0x00800220;
	while ( *(tse + 0x02) != ( *(tse +0x02 ) | 0x00800220));

	//MAC FIFO Configuration
	*(tse + 0x09) = TSE_TRANSMIT_FIFO_DEPTH-16;	//tx_section_empty
	*(tse + 0x0E ) = 0x03;						//tx_almost_full
	*(tse + 0x0D ) = 0x08;						//tx_almost_empty
	*(tse + 0x07 ) = TSE_RECEIVE_FIFO_DEPTH-16;	//rx_section_empty
	*(tse + 0x0C ) = 0x08;						//rx_almost_full
	*(tse + 0x0B ) = 0x08;						//rx_almost_empty
	*(tse + 0x0A ) = 0x00;						//tx_section_full
	*(tse + 0x08 ) = 0x00;						//rx_section_full


	if(!device){						// Initialize the MAC address, also to check against
		*(tse + 0x03) = 0x17231C00;
		*(tse + 0x04) = 0x0000CB4A;
	}
	else {
		*(tse + 0x03) = 0x930B16C8;		//second MAC to check for
		*(tse + 0x04) = 0x0000DA67;
	}
	// MAC function configuration
	*(tse + 0x05) = 1518;		//frame length
	*(tse + 0x17) = 12;			//tx_ipg_length
	*(tse + 0x06) = 0xFFFF;		//pause_quant
	*(tse + 0x02) = 0x00800220;	//config register

	// Software reset the PHY chip and wait
	*(tse + 0x02) =  0x00802220;
	alt_printf("Setting the reset rx");
	while ( *(tse + 0x02) != ( 0x00800220 )) printf(" ") ;

	// Enable read and write transfers, gigabit Ethernet operation and promiscuous mode

	*(tse + 0x02) = *(tse + 0x02) | 0x0080023B;//3rd bit changed to 0/8
	printf( "OR while loop\n");
	while ( *(tse + 0x02) != ( *(tse + 0x02) | 0x0080023B ) );
	printf (" FINISH OR while loop \n");

	while (1) {
		in=IORD_ALTERA_AVALON_PIO_DATA(SWITCH_BASE); //read the input from the switch
		if (in == 1){
			IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, 0x01);//turn on or turn off the LED
		}
		else{
			IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, 0x00);
		}
	}
	return rx_data;
}

void rx_ethernet_isr (void *context){

	//Include your code to show the values of the source and destination addresses of the received frame. For example:
	if(in == 1){ // check if the switch is on
	}
	else {
		alt_dcache_flush_all(); //clear cache - haven't tested without clearing, suggested in Intel skeleton program
		printf( "Destination MAC address: %x.%x.%x.%x.%x.%x\n", rx_data[2], rx_data[3], rx_data[4], rx_data[5],rx_data[6], rx_data[7] );
		printf( "Source MAC address: %x.%x.%x.%x.%x.%x\n", rx_data[8], rx_data[9], rx_data[10], rx_data[11],rx_data[12], rx_data[13] );
		printf( "Length: %d%d\nSource IP: %d.%d.%d.%d\n", rx_data[14], rx_data[15], rx_data[16], rx_data[17],rx_data[18], rx_data[19] );
		printf( "Destination IP: %d.%d.%d.%d\nSource Port: %d%d\n", rx_data[20], rx_data[21], rx_data[22], rx_data[23],rx_data[24], rx_data[25] );
		printf( "Destination Port: %d%d\nSYN: %x\nFIN: %x\nSequence Number: %x\nAck Number: %x\n", rx_data[26], rx_data[27], rx_data[28], rx_data[29],rx_data[30], rx_data[31] );
		printf( "Data: %x\n", rx_data[32]);
		//printf below this is experimental
		printf( "Successful frames: %x \n", *(tse + 0x1A) );
		printf( "Broadcast frames: %x \n", *(tse + 0x26) );
		alt_dcache_flush_all();
	}
	// Wait until receive descriptor transfer is complete
	while (alt_avalon_sgdma_check_descriptor_status(&rx_descriptor) != 0)
		;

}

void tx_ethernet_isr (void *context){

	transmissionStatus = 1;
	printf("Destination address: %x.%x.%x.%x.%x.%x \n", tx_data[2], tx_data[3], tx_data[4], tx_data[5],tx_data[6], tx_data[7] );
	printf("Source address: %x.%x.%x.%x.%x.%x\n", tx_data[8], tx_data[9], tx_data[10], tx_data[11], tx_data[12], tx_data[13] );
	printf("Source IP: %d.%d.%d.%d\n", tx_data[16], tx_data[17], tx_data[18], tx_data[19]);
	printf("Destination IP: %d.%d.%d.%d\n", tx_data[20], tx_data[21], tx_data[22], tx_data[23]);
	printf("Source Port: %d%d%\n Destination Port: %d%d%\n ", tx_data[24], tx_data[25], tx_data[26], tx_data[27]);
	printf("SYN: %x FIN: %x%\n Seq: %x Ack: %x%\n ", tx_data[28], tx_data[29], tx_data[30], tx_data[31]);
	printf("Data: %x%\n ", tx_data[32]);
	printf("Frames Transmitted: %x\n", *(tse + 0x1A) );
	printf("Pause Frames Transmitted: %x \n", *(tse + 0x20));
	printf("Config Register: 0x%x\n", *(tse + 0x02));
	// Wait until transmit descriptor transfer is complete
	while (alt_avalon_sgdma_check_descriptor_status(&tx_descriptor) != 0)
		;

}

