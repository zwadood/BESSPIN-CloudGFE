#pragma once

extern
void AWS_Sim_Lib_init (void);

extern
void AWS_Sim_Lib_shutdown (void);

extern
int fpga_dma_burst_read (int fd, uint8_t *buffer, size_t size, uint64_t address);

extern
int fpga_dma_burst_write (int fd, uint8_t *buffer, size_t size, uint64_t address);

extern
int fpga_pci_peek (uint32_t ocl_addr, uint32_t *p_ocl_data);

extern
int fpga_pci_poke (uint32_t ocl_addr, uint32_t ocl_data);
