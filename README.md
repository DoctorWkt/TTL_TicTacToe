# TTL_TicTacToe

> __NOTE!!__ As at 13th June 2019 it's broken. I'm trying to use a
> smaller ROM as they are more commonly available. I'm trying to
> encode a 4-bit "state number" in the ROM output as well as the 4-bits
> for the move. This state number is latched and then forms 4 bits
> of the address, as well as the 9 bits of user move, to look up
> the next move by the board. 
>
> I've changed the Logisim circuit and I've written the code to generate
> the ROM contents. It's not working fully yet. But it must be close.

I've seen several circuits for two-player tic-tac-toe games on the Internet,
but I thought I'd try to design one with these constraints:

 + done with TTL components only, no CPU
 + minimum number of chips
 + not two player: human versus the board, board makes optimal moves

This is the repository for my result. The circuit uses flip-flops to
register both the human and the board's moves. These become the address
into a ROM to look up the next board move, and any tie or win result.

There are several versions of the circuit.

## Logisim Version

I quickly knocked up this [Logisim version](ttt_wkt.circ) in preparation for
designing the real circuit with TTL components. If you haven't used
[Logisim](http://www.cburch.com/logisim/) before, open up the _*.circ_
file. Right-click on the ROM and choose *Load image* and choose the
_ttl.rom_ file to load. Now start the clock with a control-K (or use
_Simulate -> Ticks Enabled_). Now that the circuit is running, click on
the brown finger icon (the poke tool) at the top-left. Use this to push
the nine user move buttons and/or the Reset button. The buttons are the
slightly 3D-looking white squares at the top-right.

You should see the human move LEDs light up in red and the board's move
LEDs light up in blue. There is also a tie LED and a win LED.

Over on the left are the nine JK flip-flops to record the user's moves,
and the nine JK flip-flops to record the board's moves. Below that is
the ROM which generates a 4-bit value which is the new board's move,
plus any tie and win result.

The 4-bit board move goes into the 4:16 demultiplexer to generate the nine
lines which go to the nine JK flip-flops to record the board's moves.

## Kicad Schematic

In the _Schematic/_ folder you will find a
[Kicad schematic](Schematic/schematic.pdf) for the circuit. This uses:

 + nine 74HC107 dual JK flip flops. Each one holds both the user and board
   move for one position on the board
 + one 27C2001 256Kx8 EPROM to look up the next board move. This is an
   obsolete part but you can still buy them second-hand.
 + one 74HC154 4:16 demultiplexer
 + one 555 to generate the clock signal
 + various LEDs to show the moves, and other sundry components.

I've also designed a [PCB](Figs/pcb1.jpg) to hold all the components.
The design has separate LEDs for user and board moves, but I've chosen to use
bi-colour LEDs so that there is a single physical LED for each board position:
green for the user, red for the board, off when empty.
