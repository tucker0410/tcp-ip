#include <altera_avalon_sgdma.h>
#include <altera_avalon_sgdma_descriptor.h>
#include <altera_avalon_sgdma_regs.h>
#include "sys/alt_stdio.h"
#include "sys/alt_irq.h"
#include <unistd.h>

// Function Prototypes
void rx_ethernet_isr (void *context);
//void tx_ethernet_isr (void *context);

//void tx_ethernet_isr (void *context);

// Global Variables

unsigned int i=0;


// Create a transmit frame char=1 byte
unsigned char tx_frame[1518] = { 0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xC8,0x16,0x0B,0x93,0x67,0xDA,0x00,0x2E };

// Create a receive frame
unsigned char rx_frame[1518] = { 0 };

// Create sgdma transmit and receive devices
alt_sgdma_dev * sgdma_tx_dev;
alt_sgdma_dev * sgdma_rx_dev;

// Allocate descriptors in the descriptor_memory (onchip memory)
alt_sgdma_descriptor tx_descriptor __attribute__ (( section ( ".descriptor_memory" )));
alt_sgdma_descriptor tx_descriptor_end __attribute__ (( section ( ".descriptor_memory" )));

alt_sgdma_descriptor rx_descriptor __attribute__ (( section ( ".descriptor_memory" )));
alt_sgdma_descriptor rx_descriptor_end __attribute__ (( section ( ".descriptor_memory" )));


/********************************************************************************
* This program demonstrates use of the Ethernet in the DE2-115 board.
*
* It performs the following:
* 1. Records input text and transmits the text via Ethernet after Enter is
* pressed
* 2. Displays text received via Ethernet frame on the JTAG UART
********************************************************************************/
int main(void)
{
// Open the sgdma transmit device
sgdma_tx_dev = alt_avalon_sgdma_open ("/dev/sgdma_tx");
if (sgdma_tx_dev == NULL) {
alt_printf ("Error: could not open scatter-gather dma transmit device\n");
return -1;
} else alt_printf ("Opened scatter-gather dma transmit device\n");

// Open the sgdma receive device
sgdma_rx_dev = alt_avalon_sgdma_open ("/dev/sgdma_rx");
if (sgdma_rx_dev == NULL) {
alt_printf ("Error: could not open scatter-gather dma receive device\n");
return -1;
} else alt_printf ("Opened scatter-gather dma receive device\n");

// Set interrupts for the sgdma receive device
alt_avalon_sgdma_register_callback( sgdma_rx_dev, (alt_avalon_sgdma_callback) rx_ethernet_isr, 0x00000014, NULL );

// Create sgdma receive descriptor
alt_avalon_sgdma_construct_stream_to_mem_desc( &rx_descriptor, &rx_descriptor_end, (alt_u32 *)rx_frame, 0, 0 );

// Set up non-blocking transfer of sgdma receive descriptor
alt_avalon_sgdma_do_async_transfer( sgdma_rx_dev, &rx_descriptor );


// Triple-speed Ethernet MegaCore base address
volatile int * tse = (int *) 0x00102000;

// Initialize the MAC address
//*(tse + 3) = 0x116E6001;
//*(tse + 4) = 0x00000F02;

// Specify the addresses of the PHY devices to be accessed through MDIO interface
*(tse + 0x0F) = 0x10;
*(tse + 0x10) = 0x11;

// Write to register 20 of the PHY chip for Ethernet port 0 to set up line loopback
*(tse + 0x94) = 0x4000;

// Write to register 16 of the PHY chip for Ethernet port 1 to enable automatic crossover for all modes("| = OR")
*(tse + 0xB0) = *(tse + 0xB0) | 0x0060;

// Write to register 20 of the PHY chip for Ethernet port 2 to set up delay for input/output clk
*(tse + 0xB4) = *(tse + 0xB4) | 0x0082;


// Software reset the second PHY chip and wait
*(tse + 0xA0) = *(tse + 0xA0) | 0x8000;
while ( *(tse + 0xA0) & 0x8000 )
;


// Enable read and write transfers, gigabit Ethernet operation, and CRC forwarding
*(tse + 2) = *(tse + 2) | 0x000000CB;

alt_avalon_sgdma_construct_mem_to_stream_desc( &tx_descriptor, &tx_descriptor_end, (alt_u32 *)tx_frame, 60, 0, 1, 1, 0 );

// Set up non-blocking transfer of sgdma transmit descriptor
alt_avalon_sgdma_do_async_transfer( sgdma_tx_dev, &tx_descriptor );

// Wait until transmit descriptor transfer is complete
while (alt_avalon_sgdma_check_descriptor_status(&tx_descriptor) != 0)
;


return 0;
}

/****************************************************************************************
* Subroutine to read incoming Ethernet frames
****************************************************************************************/
void rx_ethernet_isr (void *context)
{


// Wait until receive descriptor transfer is complete
while (alt_avalon_sgdma_check_descriptor_status(&rx_descriptor) != 0);

// Create new receive sgdma descriptor
alt_avalon_sgdma_construct_stream_to_mem_desc( &rx_descriptor, &rx_descriptor_end, (alt_u32 *)rx_frame, 0, 0 );

// Set up non-blocking transfer of sgdma receive descriptor
alt_avalon_sgdma_do_async_transfer( sgdma_rx_dev, &rx_descriptor );

for(i=0;i<=1518;i++)
tx_frame[i] = rx_frame[i];


for (i=0;i<=25;i++)
alt_printf("%x",rx_frame[i]);
alt_printf("\n");
alt_printf("%x",rx_frame[25]);
alt_printf("\n");


}
