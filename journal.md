# Journal for My Tic Tac Toe in TTL Development

Here's my journal for this project. I use it to keep notes and track
my journey. It's probably not that interesting to read.

## Thu  6 Jun 09:43:35 AEST 2019

Yesterday I mused on if a game of Tic Tac Toe could be desgined with
TTL components, and how many chips it would take. After a few hours
I'd designed a working circuit in Logisim and I'd written the scripts
to generate the ROM contents so that the board would always choose the
best next move.

I also chose the ICs that I would use for a real circuit:

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

The [design notes](design_notes.md) have more information about the
overall architecture of the design of the board.

This morning I've sketched out the circuit in Kicad, roughly
arranged the components on a PCB and run freerouter to see how good/bad
the layout is. I've got only 14 or so vias, so that's not too bad.

Now I need to go back and review all the components. Example: the demux
output is active low, so I probably need to wire its outputs to the K
inputs of the J-K flip-flops.

## Thu  6 Jun 11:47:03 AEST 2019

Yes, I had to change to 74HC109 flip-flops as these have a K# input.
Now I use this to register the active-low output from the demux,
and thus I use the Q# output for the active-high registered board moves.
I got rid of some resistors for the push-buttons, and I've laid out the
PCB much more cleanly. Now running freeroute.
