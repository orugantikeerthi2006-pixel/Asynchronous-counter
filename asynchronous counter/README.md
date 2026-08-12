# Asynchronous Counter

## Description

This project implements a simple 4-bit Asynchronous Counter using Verilog HDL.

An asynchronous counter is also called a ripple counter because each flip-flop is triggered by the output of the previous flip-flop.

The counter counts from 0 to 15 and then starts again from 0.

## Features

- 4-bit counter
- Counts from 0 to 15
- Asynchronous reset
- Simple design
- Easy to understand

## Inputs

| Input | Description |
|------|-------------|
| `clk` | Clock signal |
| `reset` | Resets the counter to 0 |

## Output

| Output | Description |
|--------|-------------|
| `q` | 4-bit counter output |

## Counting Sequence

The counter follows:

    0000
    0001
    0010
    0011
    0100
    0101
    0110
    0111
    1000
    1001
    1010
    1011
    1100
    1101
    1110
    1111
    0000

## Working

The first flip-flop is controlled by the input clock.

The output of each flip-flop is used as the clock for the next flip-flop.

Therefore, the changes ripple through the counter.

## Files

- `asynchronous_counter.v` - Main Verilog code
- `asynchronous_counter_tb.v` - Testbench
- `output.vcd` - Simulation waveform
- `README.md` - Project documentation

## How to Run

Compile:

    iverilog -o counter_sim asynchronous_counter.v asynchronous_counter_tb.v

Run:

    vvp counter_sim

Open waveform:

    gtkwave output.vcd

## Expected Result

The counter counts from 0 to 15 and then returns to 0.

## Conclusion

The 4-bit asynchronous counter successfully performs counting using a ripple-counter structure.