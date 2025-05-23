// Copyright (c) 2013-2019 Bluespec, Inc.  All Rights Reserved

package C_Imports;

// ================================================================
// These are functions imported into BSV during Bluesim or Verilog simulation.
// See C_Imported_Functions.{h,c} for the corresponding C declarations
// and implementations.

// There are several independent groups of functions below; the
// groups are separated by heavy dividers ('// *******')

// Below, 'dummy' args are not used, and are present only to appease
// some Verilog simulators that are finicky about 0-arg functions.

// ================================================================
// BSV lib imports

import Vector :: *;

// ****************************************************************
// ****************************************************************
// ****************************************************************

// Functions to measure simulation speed

// ================================================================
// c_start_timing()
// Start the timing interval; argument is current cycle number.

import "BDPI"
function Action c_start_timing (Bit #(64)  cycle_num);

// ================================================================
// c_end_timing()
// End the timing interval; argument is current cycle number,
// and print delta cycles, delta time and simulation speed.

import "BDPI"
function Action c_end_timing (Bit #(64)  cycle_num);

// ****************************************************************
// ****************************************************************
// ****************************************************************

// Functions for communication with remote debug client.

Bit #(16) default_tcp_port = 30000;

// ================================================================
// Connect to remote host on tcp_port (host is client, we are server)

import "BDPI"
function Action  c_host_connect (Bit #(16)  tcp_port);

// ================================================================
// Disconnect from remote host.
// Return fail/ok.

import "BDPI"
function Action  c_host_disconnect (Bit #(8)  dummy);

// ================================================================
// Receive bytevec from remote host

// The Vector size is determined by the interface of the ByteVec
// package that receives the bytevec, which depends on the payload
// types from host to BSV.  BSV's type-checker will check this.
// We also pass this size as an arg for C bounds-checking.

import "BDPI"
function ActionValue #(Vector #(79, Bit #(8)))  c_host_recv (Bit #(8)  bytevec_size);

// ================================================================
// Send bytevec to remote host
// Returns fail/ok status

// The Vector size is determined by the interface of the ByteVec
// package that sends the bytevec, which depends on the payload
// types from BSV to host.  BSV's type-checker will check this.
// We also pass this size as an arg for C bounds-checking.

import "BDPI"
function Action  c_host_send (Vector #(76, Bit #(8)) bytevec,
			      Bit #(8) bytevec_size);

// ****************************************************************
// ****************************************************************
// ****************************************************************

// Functions for Tandem Verification trace file output.

// ================================================================
// c_trace_file_open ()
// Open file for recording binary trace output.

import "BDPI"
function ActionValue #(Bit #(32)) c_trace_file_open (Bit #(8) dummy);

// ================================================================
// c_trace_file_load_byte_in_buffer ()
// Write 8-bit 'data' into output buffer at byte offset 'j'

import "BDPI"
function ActionValue #(Bit #(32)) c_trace_file_load_byte_in_buffer (Bit #(32) j, Bit #(8) data);

// ================================================================
// c_trace_file_load_word64_in_buffer ()
// Write 64-bit 'data' into output buffer at 'byte_offset'

import "BDPI"
function ActionValue #(Bit #(32)) c_trace_file_load_word64_in_buffer (Bit #(32) byte_offset, Bit #(64) data);

// ================================================================
// c_trace_file_write_buffer ()
// Write out 'n' bytes from the already-loaded output buffer to the trace file.

import "BDPI"
function ActionValue #(Bit #(32)) c_trace_file_write_buffer (Bit #(32)  n);

// ================================================================
// c_trace_file_close()
// Close the trace file.

import "BDPI"
function ActionValue #(Bit #(32))  c_trace_file_close (Bit #(8) dummy);

// ****************************************************************
// ****************************************************************
// ****************************************************************

endpackage
