// Copyright (c) 2018-2020 Bluespec, Inc. All Rights Reserved

// Hand-written System Verilog import statements for imported C functions

// ****************************************************************
// ****************************************************************
// ****************************************************************

// Functions to measure simulation speed

// ================================================================
// c_start_timing()
// Start the timing interval; argument is current cycle number.

import "DPI-C"
function void c_start_timing (longint unsigned  cycle_num);

// ================================================================
// c_end_timing()
// End the timing interval; argument is current cycle number,
// and print delta cycles, delta time and simulation speed.

import "DPI-C"
function void c_end_timing (longint unsigned  cycle_num);

// ****************************************************************
// ****************************************************************
// ****************************************************************

import "DPI-C"
function  void  c_host_connect (shortint  tcp_port);

import "DPI-C"
function  void  c_host_disconnect (byte unsigned  dummy);

import "DPI-C"
function  void  c_host_recv (int unsigned  data, byte unsigned  bytevec_size);

import "DPI-C"
function  void  c_host_send (int unsigned  data, byte unsigned  bytevec_size);

// ****************************************************************
// ****************************************************************
// ****************************************************************

// Functions for Tandem Verification trace file output.

import "DPI-C"
function  int unsigned  c_trace_file_open (byte unsigned dummy);

import "DPI-C"
function  int unsigned  c_trace_file_load_byte_in_buffer (int unsigned  j, byte unsigned  data);

import "DPI-C"
function  int unsigned  c_trace_file_load_word64_in_buffer (int unsigned  byte_offset, longint unsigned  data);

import "DPI-C"
function  int unsigned  c_trace_file_write_buffer (int unsigned  n);

import "DPI-C"
function  int unsigned  c_trace_file_close (byte unsigned dummy);

// ****************************************************************
// ****************************************************************
// ****************************************************************
