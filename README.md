## Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item            | Description                                       | Value |
| --------------- | ------------------------------------------------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25%   |
| Question 1      | Your answers to the question                      | 25%   |
| Question 2      | Your answers to the question                      | 25%   |
| Question 3      | Your answers to the question                      | 25%   |

## Names Allan and Razma

## Summary

In this lab, we learned how to use latches to store information using Verilog and Vivado. We built a four-byte memory system that can store 8 bits in each of four memory locations. we used demultiplexers to send data and the store signal to the selected memory, and a multiplexer to display the stored data on the LEDs. We also learned how to connect modules using wires and how switches and buttons control the memory system.

## Lab Questions

### Why can we not just use structural Verilog to implement latches?

Because a latch needs to remember its previous value when the enable signal is off. Structural Verilog connects components, but we need behavioral logic to describe how the latch stores and holds data.

### What is the meaning of always @(\*) in a sensitivity block?

always @(\*) means the block runs whenever any input signal used inside it changes. It is commonly used to describe combinational logic, such as multiplexers and demultiplexers.

### What importance is memory to digital circuits?

Memory is important because it allows digital circuits to store information and use it later. Without memory, circuits would not be able to remember previous data or values.
