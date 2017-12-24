/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2' in SOPC Builder design 'final_tcp_hw'
 * SOPC Builder design path: ../../final_tcp_hw.sopcinfo
 *
 * Generated: Tue Dec 05 00:31:16 EST 2017
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00101820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x15
#define ALT_CPU_DCACHE_BYPASS_MASK 0x80000000
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x00080020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_EXTRA_EXCEPTION_INFO
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x15
#define ALT_CPU_NAME "nios2"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00080000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00101820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x15
#define NIOS2_DCACHE_BYPASS_MASK 0x80000000
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x00080020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_EXTRA_EXCEPTION_INFO
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x15
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00080000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SGDMA
#define __ALTERA_AVALON_TIMER
#define __ALTERA_ETH_TSE
#define __ALTERA_NIOS2_GEN2


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV GX"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x1024c0
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x1024c0
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x1024c0
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "final_tcp_hw"


/*
 * descriptor_memory configuration
 *
 */

#define ALT_MODULE_CLASS_descriptor_memory altera_avalon_onchip_memory2
#define DESCRIPTOR_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define DESCRIPTOR_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define DESCRIPTOR_MEMORY_BASE 0x100000
#define DESCRIPTOR_MEMORY_CONTENTS_INFO ""
#define DESCRIPTOR_MEMORY_DUAL_PORT 0
#define DESCRIPTOR_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define DESCRIPTOR_MEMORY_INIT_CONTENTS_FILE "final_tcp_hw_descriptor_memory"
#define DESCRIPTOR_MEMORY_INIT_MEM_CONTENT 1
#define DESCRIPTOR_MEMORY_INSTANCE_ID "NONE"
#define DESCRIPTOR_MEMORY_IRQ -1
#define DESCRIPTOR_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DESCRIPTOR_MEMORY_NAME "/dev/descriptor_memory"
#define DESCRIPTOR_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define DESCRIPTOR_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define DESCRIPTOR_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define DESCRIPTOR_MEMORY_SINGLE_CLOCK_OP 0
#define DESCRIPTOR_MEMORY_SIZE_MULTIPLE 1
#define DESCRIPTOR_MEMORY_SIZE_VALUE 4096
#define DESCRIPTOR_MEMORY_SPAN 4096
#define DESCRIPTOR_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define DESCRIPTOR_MEMORY_WRITABLE 1


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x1024c0
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * led configuration
 *
 */

#define ALT_MODULE_CLASS_led altera_avalon_pio
#define LED_BASE 0x1024b0
#define LED_BIT_CLEARING_EDGE_REGISTER 0
#define LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_CAPTURE 0
#define LED_DATA_WIDTH 1
#define LED_DO_TEST_BENCH_WIRING 0
#define LED_DRIVEN_SIM_VALUE 0
#define LED_EDGE_TYPE "NONE"
#define LED_FREQ 100000000
#define LED_HAS_IN 0
#define LED_HAS_OUT 1
#define LED_HAS_TRI 0
#define LED_IRQ -1
#define LED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_IRQ_TYPE "NONE"
#define LED_NAME "/dev/led"
#define LED_RESET_VALUE 0
#define LED_SPAN 16
#define LED_TYPE "altera_avalon_pio"


/*
 * main_memory configuration
 *
 */

#define ALT_MODULE_CLASS_main_memory altera_avalon_onchip_memory2
#define MAIN_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define MAIN_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define MAIN_MEMORY_BASE 0x80000
#define MAIN_MEMORY_CONTENTS_INFO ""
#define MAIN_MEMORY_DUAL_PORT 0
#define MAIN_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define MAIN_MEMORY_INIT_CONTENTS_FILE "final_tcp_hw_main_memory"
#define MAIN_MEMORY_INIT_MEM_CONTENT 1
#define MAIN_MEMORY_INSTANCE_ID "NONE"
#define MAIN_MEMORY_IRQ -1
#define MAIN_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MAIN_MEMORY_NAME "/dev/main_memory"
#define MAIN_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define MAIN_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define MAIN_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define MAIN_MEMORY_SINGLE_CLOCK_OP 0
#define MAIN_MEMORY_SIZE_MULTIPLE 1
#define MAIN_MEMORY_SIZE_VALUE 307200
#define MAIN_MEMORY_SPAN 307200
#define MAIN_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define MAIN_MEMORY_WRITABLE 1


/*
 * main_memory configuration as viewed by sgdma_rx_m_write
 *
 */

#define SGDMA_RX_M_WRITE_MAIN_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_BASE 0x80000
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_CONTENTS_INFO ""
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_DUAL_PORT 0
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_INIT_CONTENTS_FILE "final_tcp_hw_main_memory"
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_INIT_MEM_CONTENT 1
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_INSTANCE_ID "NONE"
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_IRQ -1
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_NAME "/dev/main_memory"
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_SINGLE_CLOCK_OP 0
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_SIZE_MULTIPLE 1
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_SIZE_VALUE 307200
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_SPAN 307200
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define SGDMA_RX_M_WRITE_MAIN_MEMORY_WRITABLE 1


/*
 * main_memory configuration as viewed by sgdma_tx_m_read
 *
 */

#define SGDMA_TX_M_READ_MAIN_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define SGDMA_TX_M_READ_MAIN_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define SGDMA_TX_M_READ_MAIN_MEMORY_BASE 0x80000
#define SGDMA_TX_M_READ_MAIN_MEMORY_CONTENTS_INFO ""
#define SGDMA_TX_M_READ_MAIN_MEMORY_DUAL_PORT 0
#define SGDMA_TX_M_READ_MAIN_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define SGDMA_TX_M_READ_MAIN_MEMORY_INIT_CONTENTS_FILE "final_tcp_hw_main_memory"
#define SGDMA_TX_M_READ_MAIN_MEMORY_INIT_MEM_CONTENT 1
#define SGDMA_TX_M_READ_MAIN_MEMORY_INSTANCE_ID "NONE"
#define SGDMA_TX_M_READ_MAIN_MEMORY_IRQ -1
#define SGDMA_TX_M_READ_MAIN_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SGDMA_TX_M_READ_MAIN_MEMORY_NAME "/dev/main_memory"
#define SGDMA_TX_M_READ_MAIN_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define SGDMA_TX_M_READ_MAIN_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define SGDMA_TX_M_READ_MAIN_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define SGDMA_TX_M_READ_MAIN_MEMORY_SINGLE_CLOCK_OP 0
#define SGDMA_TX_M_READ_MAIN_MEMORY_SIZE_MULTIPLE 1
#define SGDMA_TX_M_READ_MAIN_MEMORY_SIZE_VALUE 307200
#define SGDMA_TX_M_READ_MAIN_MEMORY_SPAN 307200
#define SGDMA_TX_M_READ_MAIN_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define SGDMA_TX_M_READ_MAIN_MEMORY_WRITABLE 1


/*
 * sgdma_rx configuration
 *
 */

#define ALT_MODULE_CLASS_sgdma_rx altera_avalon_sgdma
#define SGDMA_RX_ADDRESS_WIDTH 32
#define SGDMA_RX_ALWAYS_DO_MAX_BURST 1
#define SGDMA_RX_ATLANTIC_CHANNEL_DATA_WIDTH 4
#define SGDMA_RX_AVALON_MM_BYTE_REORDER_MODE 0
#define SGDMA_RX_BASE 0x102440
#define SGDMA_RX_BURST_DATA_WIDTH 8
#define SGDMA_RX_BURST_TRANSFER 0
#define SGDMA_RX_BYTES_TO_TRANSFER_DATA_WIDTH 16
#define SGDMA_RX_CHAIN_WRITEBACK_DATA_WIDTH 32
#define SGDMA_RX_COMMAND_FIFO_DATA_WIDTH 104
#define SGDMA_RX_CONTROL_DATA_WIDTH 8
#define SGDMA_RX_CONTROL_SLAVE_ADDRESS_WIDTH 0x4
#define SGDMA_RX_CONTROL_SLAVE_DATA_WIDTH 32
#define SGDMA_RX_DESCRIPTOR_READ_BURST 0
#define SGDMA_RX_DESC_DATA_WIDTH 32
#define SGDMA_RX_HAS_READ_BLOCK 0
#define SGDMA_RX_HAS_WRITE_BLOCK 1
#define SGDMA_RX_IN_ERROR_WIDTH 6
#define SGDMA_RX_IRQ 1
#define SGDMA_RX_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SGDMA_RX_NAME "/dev/sgdma_rx"
#define SGDMA_RX_OUT_ERROR_WIDTH 0
#define SGDMA_RX_READ_BLOCK_DATA_WIDTH 32
#define SGDMA_RX_READ_BURSTCOUNT_WIDTH 4
#define SGDMA_RX_SPAN 64
#define SGDMA_RX_STATUS_TOKEN_DATA_WIDTH 24
#define SGDMA_RX_STREAM_DATA_WIDTH 32
#define SGDMA_RX_SYMBOLS_PER_BEAT 4
#define SGDMA_RX_TYPE "altera_avalon_sgdma"
#define SGDMA_RX_UNALIGNED_TRANSFER 0
#define SGDMA_RX_WRITE_BLOCK_DATA_WIDTH 32
#define SGDMA_RX_WRITE_BURSTCOUNT_WIDTH 4


/*
 * sgdma_tx configuration
 *
 */

#define ALT_MODULE_CLASS_sgdma_tx altera_avalon_sgdma
#define SGDMA_TX_ADDRESS_WIDTH 32
#define SGDMA_TX_ALWAYS_DO_MAX_BURST 1
#define SGDMA_TX_ATLANTIC_CHANNEL_DATA_WIDTH 4
#define SGDMA_TX_AVALON_MM_BYTE_REORDER_MODE 0
#define SGDMA_TX_BASE 0x102400
#define SGDMA_TX_BURST_DATA_WIDTH 8
#define SGDMA_TX_BURST_TRANSFER 0
#define SGDMA_TX_BYTES_TO_TRANSFER_DATA_WIDTH 16
#define SGDMA_TX_CHAIN_WRITEBACK_DATA_WIDTH 32
#define SGDMA_TX_COMMAND_FIFO_DATA_WIDTH 104
#define SGDMA_TX_CONTROL_DATA_WIDTH 8
#define SGDMA_TX_CONTROL_SLAVE_ADDRESS_WIDTH 0x4
#define SGDMA_TX_CONTROL_SLAVE_DATA_WIDTH 32
#define SGDMA_TX_DESCRIPTOR_READ_BURST 0
#define SGDMA_TX_DESC_DATA_WIDTH 32
#define SGDMA_TX_HAS_READ_BLOCK 1
#define SGDMA_TX_HAS_WRITE_BLOCK 0
#define SGDMA_TX_IN_ERROR_WIDTH 0
#define SGDMA_TX_IRQ 2
#define SGDMA_TX_IRQ_INTERRUPT_CONTROLLER_ID 0
#define SGDMA_TX_NAME "/dev/sgdma_tx"
#define SGDMA_TX_OUT_ERROR_WIDTH 1
#define SGDMA_TX_READ_BLOCK_DATA_WIDTH 32
#define SGDMA_TX_READ_BURSTCOUNT_WIDTH 4
#define SGDMA_TX_SPAN 64
#define SGDMA_TX_STATUS_TOKEN_DATA_WIDTH 24
#define SGDMA_TX_STREAM_DATA_WIDTH 32
#define SGDMA_TX_SYMBOLS_PER_BEAT 4
#define SGDMA_TX_TYPE "altera_avalon_sgdma"
#define SGDMA_TX_UNALIGNED_TRANSFER 0
#define SGDMA_TX_WRITE_BLOCK_DATA_WIDTH 32
#define SGDMA_TX_WRITE_BURSTCOUNT_WIDTH 4


/*
 * switch configuration
 *
 */

#define ALT_MODULE_CLASS_switch altera_avalon_pio
#define SWITCH_BASE 0x1024a0
#define SWITCH_BIT_CLEARING_EDGE_REGISTER 0
#define SWITCH_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SWITCH_CAPTURE 0
#define SWITCH_DATA_WIDTH 1
#define SWITCH_DO_TEST_BENCH_WIRING 0
#define SWITCH_DRIVEN_SIM_VALUE 0
#define SWITCH_EDGE_TYPE "NONE"
#define SWITCH_FREQ 100000000
#define SWITCH_HAS_IN 1
#define SWITCH_HAS_OUT 0
#define SWITCH_HAS_TRI 0
#define SWITCH_IRQ -1
#define SWITCH_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SWITCH_IRQ_TYPE "NONE"
#define SWITCH_NAME "/dev/switch"
#define SWITCH_RESET_VALUE 0
#define SWITCH_SPAN 16
#define SWITCH_TYPE "altera_avalon_pio"


/*
 * timer configuration
 *
 */

#define ALT_MODULE_CLASS_timer altera_avalon_timer
#define TIMER_ALWAYS_RUN 0
#define TIMER_BASE 0x102480
#define TIMER_COUNTER_SIZE 32
#define TIMER_FIXED_PERIOD 0
#define TIMER_FREQ 100000000
#define TIMER_IRQ 3
#define TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_LOAD_VALUE 999
#define TIMER_MULT 1.0E-8
#define TIMER_NAME "/dev/timer"
#define TIMER_PERIOD 1000
#define TIMER_PERIOD_UNITS "clocks"
#define TIMER_RESET_OUTPUT 0
#define TIMER_SNAPSHOT 1
#define TIMER_SPAN 32
#define TIMER_TICKS_PER_SEC 99999
#define TIMER_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TYPE "altera_avalon_timer"


/*
 * tse configuration
 *
 */

#define ALT_MODULE_CLASS_tse altera_eth_tse
#define TSE_BASE 0x102000
#define TSE_ENABLE_MACLITE 0
#define TSE_FIFO_WIDTH 32
#define TSE_IRQ -1
#define TSE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define TSE_IS_MULTICHANNEL_MAC 0
#define TSE_MACLITE_GIGE 0
#define TSE_MDIO_SHARED 0
#define TSE_NAME "/dev/tse"
#define TSE_NUMBER_OF_CHANNEL 1
#define TSE_NUMBER_OF_MAC_MDIO_SHARED 1
#define TSE_PCS 0
#define TSE_PCS_ID 0
#define TSE_PCS_SGMII 0
#define TSE_RECEIVE_FIFO_DEPTH 2048
#define TSE_REGISTER_SHARED 0
#define TSE_RGMII 1
#define TSE_SPAN 1024
#define TSE_TRANSMIT_FIFO_DEPTH 2048
#define TSE_TYPE "altera_eth_tse"
#define TSE_USE_MDIO 1

#endif /* __SYSTEM_H_ */
