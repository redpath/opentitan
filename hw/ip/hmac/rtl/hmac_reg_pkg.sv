// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package hmac_reg_pkg;

// Register to internal design logic
typedef struct packed {

  struct packed {
    struct packed {
      logic q; // [304]
    } hmac_done;
    struct packed {
      logic q; // [303]
    } fifo_full;
  } intr_state;
  struct packed {
    struct packed {
      logic q; // [302]
    } hmac_done;
    struct packed {
      logic q; // [301]
    } fifo_full;
  } intr_enable;
  struct packed {
    struct packed {
      logic q; // [300]
      logic qe; // [299]
    } hmac_done;
    struct packed {
      logic q; // [298]
      logic qe; // [297]
    } fifo_full;
  } intr_test;
  struct packed {
    struct packed {
      logic q; // [296]
    } hmac_en;
    struct packed {
      logic q; // [295]
    } sha_en;
    struct packed {
      logic q; // [294]
    } endian_swap;
    struct packed {
      logic q; // [293]
    } digest_swap;
  } cfg;
  struct packed {
    struct packed {
      logic q; // [292]
      logic qe; // [291]
    } hash_start;
    struct packed {
      logic q; // [290]
      logic qe; // [289]
    } hash_process;
  } cmd;
  struct packed {
    logic [31:0] q; // [288:257]
    logic qe; // [256]
  } wipe_secret;
  struct packed {
    logic [31:0] q; // [255:224]
  } key0;
  struct packed {
    logic [31:0] q; // [223:192]
  } key1;
  struct packed {
    logic [31:0] q; // [191:160]
  } key2;
  struct packed {
    logic [31:0] q; // [159:128]
  } key3;
  struct packed {
    logic [31:0] q; // [127:96]
  } key4;
  struct packed {
    logic [31:0] q; // [95:64]
  } key5;
  struct packed {
    logic [31:0] q; // [63:32]
  } key6;
  struct packed {
    logic [31:0] q; // [31:0]
  } key7;
} hmac_reg2hw_t;

// Internal design logic to register
typedef struct packed {

  struct packed {
    struct packed {
      logic d;  // [596]
      logic de; // [595]
    } hmac_done;
    struct packed {
      logic d;  // [594]
      logic de; // [593]
    } fifo_full;
  } intr_state;
  struct packed {
    struct packed {
      logic d;  // [592]
    } fifo_empty;
    struct packed {
      logic d;  // [591]
    } fifo_full;
    struct packed {
      logic [4:0] d; // [590:586]
    } fifo_depth;
  } status;
  struct packed {
    logic [31:0] d; // [585:554]
    logic de; // [553]
  } key0;
  struct packed {
    logic [31:0] d; // [552:521]
    logic de; // [520]
  } key1;
  struct packed {
    logic [31:0] d; // [519:488]
    logic de; // [487]
  } key2;
  struct packed {
    logic [31:0] d; // [486:455]
    logic de; // [454]
  } key3;
  struct packed {
    logic [31:0] d; // [453:422]
    logic de; // [421]
  } key4;
  struct packed {
    logic [31:0] d; // [420:389]
    logic de; // [388]
  } key5;
  struct packed {
    logic [31:0] d; // [387:356]
    logic de; // [355]
  } key6;
  struct packed {
    logic [31:0] d; // [354:323]
    logic de; // [322]
  } key7;
  struct packed {
    logic [31:0] d; // [321:290]
  } digest0;
  struct packed {
    logic [31:0] d; // [289:258]
  } digest1;
  struct packed {
    logic [31:0] d; // [257:226]
  } digest2;
  struct packed {
    logic [31:0] d; // [225:194]
  } digest3;
  struct packed {
    logic [31:0] d; // [193:162]
  } digest4;
  struct packed {
    logic [31:0] d; // [161:130]
  } digest5;
  struct packed {
    logic [31:0] d; // [129:98]
  } digest6;
  struct packed {
    logic [31:0] d; // [97:66]
  } digest7;
  struct packed {
    logic [31:0] d; // [65:34]
    logic de; // [33]
  } msg_length_lower;
  struct packed {
    logic [31:0] d; // [32:1]
    logic de; // [0]
  } msg_length_upper;
} hmac_hw2reg_t;

  // Register Address
  parameter HMAC_INTR_STATE_OFFSET = 12'h 0;
  parameter HMAC_INTR_ENABLE_OFFSET = 12'h 4;
  parameter HMAC_INTR_TEST_OFFSET = 12'h 8;
  parameter HMAC_CFG_OFFSET = 12'h c;
  parameter HMAC_CMD_OFFSET = 12'h 10;
  parameter HMAC_STATUS_OFFSET = 12'h 14;
  parameter HMAC_WIPE_SECRET_OFFSET = 12'h 18;
  parameter HMAC_KEY0_OFFSET = 12'h 1c;
  parameter HMAC_KEY1_OFFSET = 12'h 20;
  parameter HMAC_KEY2_OFFSET = 12'h 24;
  parameter HMAC_KEY3_OFFSET = 12'h 28;
  parameter HMAC_KEY4_OFFSET = 12'h 2c;
  parameter HMAC_KEY5_OFFSET = 12'h 30;
  parameter HMAC_KEY6_OFFSET = 12'h 34;
  parameter HMAC_KEY7_OFFSET = 12'h 38;
  parameter HMAC_DIGEST0_OFFSET = 12'h 3c;
  parameter HMAC_DIGEST1_OFFSET = 12'h 40;
  parameter HMAC_DIGEST2_OFFSET = 12'h 44;
  parameter HMAC_DIGEST3_OFFSET = 12'h 48;
  parameter HMAC_DIGEST4_OFFSET = 12'h 4c;
  parameter HMAC_DIGEST5_OFFSET = 12'h 50;
  parameter HMAC_DIGEST6_OFFSET = 12'h 54;
  parameter HMAC_DIGEST7_OFFSET = 12'h 58;
  parameter HMAC_MSG_LENGTH_LOWER_OFFSET = 12'h 5c;
  parameter HMAC_MSG_LENGTH_UPPER_OFFSET = 12'h 60;

  // Window parameter
  parameter HMAC_MSG_FIFO_OFFSET = 12'h 800;
  parameter HMAC_MSG_FIFO_SIZE   = 12'h 800;

endpackage