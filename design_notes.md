# Design Notes for the TTT Tic Tac Toe Circuit

Here's what I think I can use:

```
M27C2001-12F1   erasable, but discontinued. 2MB (256Kx8). 18 bits of input,
                8 bits of output. 4 output bits represent the X move, 1
                output bit is "draw", 1 output bit is "computer wins"
74HC154         4-line to 16-line decoder/demultiplexer, inverting outputs.
                The 4-bit X move output from the ROM is wired to this.
                9 outputs are wired to the flip-flips for the X moves.
74HC107         dual JK flip-flop with reset; negative-edge trigger
555             running at 100Hz or so
```

9 "user" flip-flops have J inputs wired to 9 push-buttons for user input.
The Q outputs are the bottom 9 bits of input to the ROM. All reset lines
are wired to a reset button. All clock lines are wired to the 555 clock.
The 9 K inputs are wired to the Q outputs of the X move flip-flops. This
is so that when the circuit makes a move, it undoes any move that the
user maliciously tries to make.

9 "X move" flip-flops have J inputs wired to the demultiplexer output.
As the ROM choose a move, it gets demux'd and recorded by a flip-flop.
As mentioned, it also reset any naughty user move. All reset lines
are wired to a reset button. All clock lines are wired to the 555 clock.
All K lines are wired low. The Q outputs are the top 9 bits of input to
the ROM.

Based on the 18 inputs, the ROM outputs a possible X move (bottom 4 bits),
a "draw" bit and a "computer wins" bit. The move bits go to the demux.
For the 4 "X move" bits, 0 means "do nothing", 1 means "move 1" etc.
This is so that we can indicate a draw and not make an X move.

There are 9 red LEDs on the Q output of the user flip-flops, 9 green LEDs
on the Q output of the "X move" flip-flops, a LED on the "draw" bit and
a LED on the "computer wins" bit. 
