// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

class uart_csr_vseq extends uart_base_vseq;
  `uvm_object_utils(uart_csr_vseq)

  constraint num_trans_c {
    num_trans inside {[1:2]};
  }
  `uvm_object_new

  virtual task body();
    run_csr_vseq_wrapper(num_trans);
  endtask : body


  // function to add csr exclusions of the given type using the csr_excl_item item
  virtual function void add_csr_exclusions(string           csr_test_type,
                                           csr_excl_item    csr_excl,
                                           string           scope = "ral");

    // write exclusions - these should not apply to hw_reset test
    if (csr_test_type != "hw_reset") begin
      // don't write to wdata - it affects several other csrs
      csr_excl.add_excl({scope, ".", "wdata"}, CsrExclWrite);

      // UART oversampled values are updated by design according to setting and pin RX
      csr_excl.add_excl({scope, ".", "val.rx"}, CsrExclCheck);

      // intr_test csr is WO which - it reads back 0s, plus it affects the uart_state csr
      csr_excl.add_excl({scope, ".", "intr_test"}, CsrExclWrite);
    end

    // writes to ovrd.txen causes tx output to be forced to ovrd.txval causing protocol violation
    csr_excl.add_excl({scope, ".", "ovrd.txen"}, CsrExclWrite);

    // exclude txrst and rxrst fields in fifo_ctrl - these pulse for 1 clock and read back 0
    csr_excl.add_excl({scope, ".", "fifo_ctrl.*rst"}, CsrExclWriteCheck);

    // writing 0 to timeout csr can cause rx_timeout to assert - exclude this in bit_bash seq
    if (csr_test_type == "bit_bash")
      csr_excl.add_excl({scope, ".", "intr_state.rx_timeout"}, CsrExclWriteCheck);

    // read wdata when fifo is empty, dut may return unknown data
    csr_excl.add_excl({scope, ".", "rdata"}, CsrExclCheck);
  endfunction

endclass