<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is a 4-bit asynchronous up/down counter, at clk an external clock pulse is provided, it has a reset input pin, also an up(0)/down(1) count select input pin and 4 output pins.

![counter](https://github.com/user-attachments/assets/9c01fe77-49c5-490f-a340-a69e00f0dde5)


## How to test

Counting is performed on the count[3:0] output pins automatically when the power is on, the reset input sets the count to zero and the select input controls the counting direction on the output pins.

![counter_pad](https://github.com/user-attachments/assets/619eb7b8-6cc3-4b59-8fd7-7630beffa52d)


## External hardware

A signal generator is required in case it is an asynchronous counter.

![RTL](https://github.com/user-attachments/assets/678d49f8-8273-4864-a05d-6ac97a7f2622)
