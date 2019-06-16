# Design Notes for the TTT Tic Tac Toe Circuit

Here's what I think I can use:

```
27C2001		A 32Kx8 EEPROM, of which we only need 8Kx8. 13 bits of
		input, 8 bits of output. 9 bits of inputs are the user's
		moves so far. 4 bits of input are the current board state
		as stored in the 74HC161 register. 4 output bits represent
		the board move (1 to 9). The other 4 output bits represent
		the next board state to put into the register. A move
		numbered 14 is a tie; a move numbered 15 is a board win.
74HC154         A 4-line to 16-line decoder/demultiplexer, inverting outputs.
                The 4-bit board move output from the ROM is wired to this.
                9 outputs are wired to the flip-flips for the X moves.
74HC161		A 4-bit register to hold the next board state from the EEPROM.
74HC107         Nine dual JK flip-flops with reset; negative-edge trigger.
555             A timer running at 100Hz or so.
```

9 "user" flip-flops have J inputs wired to 9 push-buttons for user input.
The Q outputs are the bottom 9 bits of input to the ROM. All reset lines
are wired to a reset button. All clock lines are wired to the 555 clock.
The 9 K inputs are wired to the Q outputs of the board move flip-flops. This
is so that when the board makes a move, it undoes any move that the
user maliciously tries to make.

9 "board move" flip-flops have J inputs wired to the demultiplexer output.
As the ROM choose a move, it gets demux'd and recorded by a flip-flop.
As mentioned, it also reset any naughty user move. All reset lines
are wired to a reset button. All clock lines are wired to the 555 clock.
All K lines are wired low.

There are 9 green LEDs on the Q output of the user flip-flops, 9 red LEDs
on the Q output of the "X move" flip-flops, a green LED on the "draw" bit and
a red LED on the "computer wins" bit. 

A high-level block diagram is:

![](Figs/design_diagram.png)
