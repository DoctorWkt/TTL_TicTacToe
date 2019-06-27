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

## Sun  9 Jun 20:39:17 AEST 2019

I'm trying a design with a smaller ROM because it's easy to get a 32Kx8 ROM
and not easy to get a 256Kx8. In this design, only the human moves go into
the ROM not the board's moves. Instead, there is a 4-bit sequence counter.
Each time the human moves, the sequence counter increments.

The idea is that, after each human move, there is one ideal board move.
So we really only need to know the current sequence number of the moves.
When we get the next human move, the set of moves and the sequence number
should determine the current state, and so we can output the best board
move and increment the sequence counter.

I was worried that I would have some metastability with the counter
and the ROM inputs/outputs, but in Logisim it seems OK. However, I'm
not generating the ROM output correctly. The circuit starts playing OK
but then goes off the rails.

It's likely that we are getting to the same state of human moves
(from several human sequences), and along the way we have chosen
different "best" board moves. And because there are different
board moves along the various paths to the current state, we are
not generating the best next move. So I will have to revisit the
ROM generation code. There is also the worry that this approach
has a gaping logical hole in it which I haven't discovered yet!

## Mon 10 Jun 09:41:06 AEST 2019

Yes a gaping hole because there are several previous states to get to the
current state. So I have an idea with parsing the "moves" file:

 + find all the win and draw states
 + work out the previous state(s) to get to them. Just use one (hopefully)
 + for each state that still hasn't got a previous one, find a previous state
 + repeat until only the empty board has no previous state.

This way, there should be only a single path from any initial move down
to the resulting win or tie.

## Tue 11 Jun 09:36:28 AEST 2019

I tried the above but I still ended up with several hundred states,
so I'd need a 9-bit state register and this would still go into the
ROM, so I'd still need the same size ROM as I had in the beginning.
So I'll give up on this avenue and go back to the original 256Kx8 ROM.

I've redone the Logisim circuit with the LEDs and buttons in a 3x3
grid at the top-right of the circuit.

## Wed 12 Jun 06:22:49 AEST 2019

Yesterday I got to Jaycar and bought the flip-flops, mux, LEDs and
resistors. Last night I started with one flip-flop and got it so it
would record a user move, a board move and stop a user changing a
board move. I've wired up three flip-flops so far:

![](Figs/breadboard1.jpg)

I can't find the small pushbuttons that I know I've got somewhere.
What's concerning is that the pinout of the 74LS109 in Kicad doesn't
match the actual chip. Example: left-hand J and K# are pins 2 and 3
but Kicad has them as pins 1 and 9. I'll have to redo the pinout.
I've also ordered two M27C2001 ROMs from utsource. Until they arrive
I can either use one of the 28C256 32Kx8 EEPROMs that I have (only 15
bits or addressing), or dig out my spare 27C322 2Mx16 EPROM which I
used as the ALU in the CSCvon8. That takes 10 minutes to program
though.

I've updated the schematic with the proper pinouts for the 74LS109.
I've added a couple of pads for power input and a 220uF cap as well.
The 74LS109 was a DIP-14 and now a DIP-16, hah!! Anyway, I'm running
a freeroute just to see how many vias are required. Looks like about
8 vias which is pretty good. I've added the copper zones and done a
DRC and all is OK.

## Thu 13 Jun 09:23:27 AEST 2019

I just had an idea a few minutes ago. The nine bits of user move into
the ROM are a given. But for this "state" of user moves, how many
possible X move combinations are there? If there's only a few, we can
store them in a register, and then update the register to move us to
the next "X state". We already have the flip-flops recording the
"O state". And if by few, I mean 6 or less, then we can use a 9+6=15 bit
EEPROM instead of a large EEPROM. We will need one more chip.

I've written the Perl code to evaluate, and the biggest "X state" space
for any "O state" is six. This fits nicely into three bits. We can use
3 bits of a 4-bit register and feed 9+3 bits into the EEPROM.

The problem is, we need 3 bits of output to update the "X state" register.
We already need 4 bits of output for the next X move. There's only one
bit left over if the EEPROM has 8 bits of output, so how do we indicate
both a win and a tie?

I think I know the answer. It will take two clock cycles. On the first cycle,
the user enters a move and updates the "O state". The current "X state" is
known. We look up in the ROM the next X move and the next "X state". This gets
stored in the register.

On the second cycle, the "O state" is the same but the "X state" is new.
Now, we output the same "X state" but we output a number 14 as the X move
H for a tie, and number 15 as the X move for a win. These go to the demux
and we tie the LEDs to outputs 14 and 15.

I'll use a 161 as a register as I should already have them at home.

Um, well. The problem is yes there are only a few X state to go
with each O state. But I've got to derive state numbers so that previous
states can point to them. But. Assume that there are only 4-bit state
numbers, so there's only 16 possible state numbers. There are 185 actual
X states, so I'm going to have to re-use state numbers across the X states.
To do this, I have to ensure that there won't be a collision between
a shared X state number and a valid O state at that point. Now how do I
do that?

Effectively, I have a matrix of Ostates and Xstates:

```
       Xstate |
Ostate        | XX______X  XX__X___X  XX__X____  etc
--------------+--------------------------------------------------------
  __OO__OO_   |
  ___O_____   |
  O__OO__O_   |
     etc      |
```

and in the middle I need to generate state numbers but in such a way
that in each column the state number is constant but on each row
every state number is different. Is this even possible?

## Thu 13 Jun 14:12:01 AEST 2019

I've just spent way too long on this. I had to write a recursive solution
to allocate the state numbers. It's sort of working but not always working.
So something is wrong, not sure what yet.

## Sun 16 Jun 12:18:15 AEST 2019

At home. I've written a Perl program to load the ROM and play the game using
the ROM. It plays the same way as the Logisim version, so at least there is
consistency.

Hah. I added code to parse_moves.pl when I was writing to a ROM value that
was already there, and I'm doing this a lot. That means my state values are
not what they should be. Added some more debug code and I can see several
Ostates with Xstates that have the same state number.

I decided to rewrite the recursive algorithm from scratch. I still see
some warning flags but both the Logisim and Perl versions seem to be
working as far as I've been able to test them.

I've redone the schematic and PCB with the 74HC161, moved the power
pins to align with my micro-USB connectors, and done the copper pour.
129.5mm by 80mm.

## Mon 17 Jun 09:23:24 AEST 2019

I announced the project on Twitter, and I've just improved the design notes
with a discussion of the state numbers.

## Tue 18 Jun 10:53:11 AEST 2019

I bought some pushbuttons at Jaycar but they are bigger than the ones I'd
put on the PCB design. So last night I redid the PCB design. It also means
that I'll have to do some rewiring of my breadboard version as I will need
to make some room for the switches.

Also, I realised that I'll have to redo the wiring for the win and tie LEDs.
I forgot that the demux is active low, so it drops to zero when a line is
active. I'll have to use the demux outputs as "ground" and wire the LEDs
up to Vcc, i.e. backwards in a sense.

## Wed 19 Jun 10:44:02 AEST 2019

Last night I moved the flip-flop chips on the breadboard to accomodate the
pushbuttons. I was able to get five of the flip-flops wired up:

![](Figs/breadboard2.jpg)

The white button is the reset button, the green buttons are the user
move buttons. There are five patch cables to hold the board move
high, but I can toggle them to make a board move. Eventually the
patch cables will go away when the nine demux lines are connected
to the nine flip-flop chips.

## Thu 20 Jun 09:40:17 AEST 2019

I've wired up all the remaining flip-flops as above. The last five have
very dim LEDs, but they work as expected. I can't tell if this is the
LEDs, the chips or what. I swapped a pair of LEDs and that didn't make
a difference. So it's either the wiring, the resistor or the chip.

Ah, it's the resistors. Some are 1K (too much) and others are 100ohm.
I might experiment with some which are as close to 1K as I can get
to ensure we don't drop the voltage too much.

I've put in the 4:16 demux and tested it in isolation with some jumpers
and a LED. Now I've wired in the nine lines out to the flip-flops and
checked, with the jumpers, that these work fine. Now it's time for the
ROM and register!

I've put them both on the breadboard. I've wired the register inputs and
outputs to the ROM. I've added the reset and clock lines to the register.
I've wired the four move lines from the ROM to the demux. I think all that's
left are the nine user moves to the ROM, oh, and the debugging! Lunch time.

## Thu 20 Jun 13:27:53 AEST 2019

![](Figs/breadboard3.jpg)

I've done the wiring. Position 1 is top-left, position 9 is bottom-right.
White lines are the clock, blue is reset. The yellow lines are the select
lines into the demux and the board move lines out from the demux. The blue
lines on the register are the lines in from the ROM and the lines out to the
ROM. The green lines are the user move lines in as address lines for the ROM.
Yes, I ran out of green wire for two of the user move lines.

Well, it sort of works. After a reset, the board has already moved at
position 1. I can then make some moves, and it generally plays sensible
moves to block me and/or build a winning line. A reset brings it back to
the current start situation.

Thus there is some debugging to do. Why are we starting with the board
moving at position 1? I think once that's fixed then perhaps the other
move oddities will go away. I have a single LED/resistor with me and
I've just checked that both the win and tie LEDs light up with the
0V values from the demux. That's excellent news.

## Thu 20 Jun 13:51:21 AEST 2019

I found it. The user move wire for position 5 was wired to the wrong
pin on the flip-flop. It's fixed. Now a reset keeps all positions off,
and the board seems to be playing a sensible game. Later, I'll fix up
the LED resistors and put in a green tie LED as well as the red win LED.
Then I'll do a video for Youtube. Success!

## Sun 23 Jun 08:21:11 AEST 2019

I was watching some of Robert Barusch's videos and he mentioned
https://jlcpcb.com/, and they are much cheaper than breadboardkillers,
so I've also ordered 5 PCBs from them. On hackaday.io, Ken Yap suggested
a way to allow the board to move first. I've done it a slightly different
way. Use another 8K of ROM to hold the moves and states for when the
board moves in position 1 first. Use a switch and a pull-down resistor
to set the ROM's A13 line to low for user-first, high for board-first.
I've just modified gen_moves.pl and parse_moves.pl to create multiple
moves and ROM files. I've loaded the new ROM into the existing Logisim
version and it works fine. I might try it out on the breadboard version
with an actual switch.

I added the switch and resistor to the breadboard, also to the PCB design.
Now 7 vias, sigh. There was a couple of small bugs in the Perl code which
I fixed, and now the breadboard can play board first and shows the wins
and ties. All good. Now to update the documentation.

## Thu 27 Jun 10:12:59 AEST 2019

The PCBs that I ordered from JLCPCB arrived yesterday. I was able to
spend a couple of hours taking the components from the breadboard and
solder them to the PCB. There were no wiring problems. The only main
problem was that my bi-colour LEDs are much larger than the two separate LEDs;
thaye actually bump into the pushbuttons. Also, the buttons for one
row are closer to the LEDs for the row below. If I redesigned the board,
I would move the buttons to be right next to the LEDs, and I'd make room
for 10mm bi-colour LEDs.

Apart from this, it all went well. The little micro USB daughter board 
works fine to supply power, and the board worked once I got all the chips on it.
I haven't done the user/board first switch yet; I'll do
that soon. So this is the second PCB that I've ordered and I'm still
surprised that I can design a PCb and it just works :-)
