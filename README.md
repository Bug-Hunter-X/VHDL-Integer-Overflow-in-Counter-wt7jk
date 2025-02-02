# VHDL Integer Overflow Bug

This repository demonstrates a common bug in VHDL: integer overflow in a simple counter.  The `buggy_counter.vhdl` file contains a counter that increments without bound. This eventually leads to an integer overflow, resulting in unpredictable behavior. The solution, `fixed_counter.vhdl`, demonstrates how to mitigate this issue using a modulo operation to prevent overflow.

## Bug Description
The `buggy_counter` entity uses an `integer` type for the counter. Integers in VHDL have a limited range.  When the counter exceeds the maximum value, an overflow occurs.

## Solution
The `fixed_counter` entity addresses this by using a modulo operation (`mod`) to wrap the counter around when it reaches a maximum value. This prevents the integer overflow.  Consider using `unsigned` if you need to track very large numbers and only need to count upwards.