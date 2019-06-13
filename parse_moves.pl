#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# Set of 2^15 ROM values. Each value is 8 bits.
# Low 4 bits are the # new X move (0= no more, 1= move 1 etc.).
# Move 14 is a tie, move 15 is a board win.
# High 4 bits are the next X state value.
#
# The 15-bit address is composed of the low 9 bits being
# the bit pattern of the user's moves. The 4 bits above this
# are the X state value from the previous round.

my @ROM= (0) x 32768;

# Comment here please XXX
my %State;

# Given the board state as a 9-char string, return two
# strings with just the O moves and just the X moves
sub o_and_x_states {
  my $board= shift;
  my $oboard= $board; my $xboard= $board;
  $oboard=~ s{X}{_}g; $xboard=~ s{O}{_}g;
  return($oboard,$xboard);
}

# Given the board state as a 9-char string, return a 9-bit
# value representing the O moves.
sub omove_bitmap {
  my $state= shift;
  my $obitmap=0;

  # Reverse the letters in the string so we get move 9 first
  foreach my $letter (reverse(split(m{}, $state))) {
    $obitmap= $obitmap << 1; $obitmap |= 1 if ($letter eq "O");
  }
  return($obitmap);
}

# Record the state number for an Xstate, also record if we have
# visited the Ostate in the following recursive solution.

my %Xstateval;
my %Ostateseen;

# For each Xstate, record the Ostates that are related to it.
my %Oset;


# Given an Xstate and a set of available state numbers,
# allocate state numbers to the Xstate. Then find the
# related Ostates, find their Xstates and repeat.
# Returns 1 if OK, 0 on error
sub allocate_statenums {
  my ($xstate, @numlist)= @_;
  #print("Got $xstate\n");

  # Return failure if no nums left.
  return(0) if (@numlist == 0);

  # Do nothing if we have already done this Xstate
  return(0) if (defined($Xstateval{$xstate}));

  # Allocate a new state number for this Xstate
  $Xstateval{$xstate}= shift(@numlist);
  # print("Allocate number $Xstateval{$xstate} for $xstate\n");

  # Walk the list of associated Ostates
  foreach my $ostate (keys(%{ $Oset{$xstate}})) {
    next if (defined($Ostateseen{$ostate}));
    $Ostateseen{$ostate}=1;
    #print("Seen $ostate\n");

    # Walk the list of new Xstates for this Ostate
    foreach my $x (keys(%{ $State{$ostate}})) {
      my $newxstate= $State{$ostate}{$x}{newxstate};
      # Skip if it already has a state number
      next if (defined($Xstateval{$newxstate}));
      #print("About to work on $newxstate\n");

      # Repeat the process for this new Xstate
      return(0) if (!allocate_statenums($newxstate, @numlist));
    }
  }
  return(1);
}
 



#### MAIN PROGRAM ####

# Open up the moves file which shows the board state after a user move,
# the X move to make and the board result. Also shows a win or a tie.
# O__OX____ X move 7 O__OX_X__
# OOXXOOOXX tie
# _OOXXO_OX X move 1 win XOOXXO_OX
#
# Generated with: ./gen_moves.pl |sort | uniq > moves

open( my $IN, "<", "moves" ) || die("Can't open moves: $!\n");
while (<$IN>) {
    chomp;

    # Parse a tie
    if (m{^(.*) tie}) {
	my $state= $1;
        my ($ostate, $xstate)= o_and_x_states($state);
	$Oset{$xstate}{$ostate}=1;
	$State{$ostate}{$xstate}{move}=14;
	$State{$ostate}{$xstate}{newxstate}=$xstate;
        next;
    }

    # Parse a win
    if (m{^(.*) X move (\d) win (.*)}) {
	my ($state, $xmove, $newstate)= ($1,$2,$3);
        my ($ostate, $xstate)= o_and_x_states($state);
	$Oset{$xstate}{$ostate}=1;
        my (undef, $newxstate)= o_and_x_states($newstate);
	$State{$ostate}{$xstate}{move}=$xmove;
	$State{$ostate}{$xstate}{newxstate}=$newxstate;
	$State{$ostate}{$newxstate}{move}=15;
	$State{$ostate}{$newxstate}{newxstate}=$newxstate;
        next;
    }

    # Ordinary move
    if (m{^(.*) X move (\d) (.*)}) {
	my ($state, $xmove, $newstate)= ($1,$2,$3);
        my ($ostate, $xstate)= o_and_x_states($state);
	$Oset{$xstate}{$ostate}=1;
        my (undef, $newxstate)= o_and_x_states($newstate);
	$State{$ostate}{$xstate}{move}=$xmove;
	$State{$ostate}{$xstate}{newxstate}=$newxstate;
        next;
    }
}
close($IN);

#print Dumper(\%State);
#print Dumper(\%Oset);

# Allocate the state numbers for all the Xstates
if (allocate_statenums('_________',
                0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)) {
} else { print("Fail\n"); }

# Now generate the ROM values
foreach my $ostate (keys(%State)) {
  # Convert the Ostate into a 9-bit bitmap of O moves
  my $obitmap= omove_bitmap($ostate);

  # Walk along all the Xstates for this Ostate
  foreach my $xstate (keys(%{ $State{$ostate}})) {
    # Get the state number for this Xstate
    my $xstatenum= $Xstateval{$xstate};

    # Get the X move for this actual state
    my $xmove= $State{$ostate}{$xstate}{move};

    # Get the next Xstate for this actual state
    my $newxstate= $State{$ostate}{$xstate}{newxstate};

    # Get the state number for this new Xstate
    my $newxstatenum= $Xstateval{$newxstate};

    # Address is the O bitmap plus the shifted X state number
    my $addr= $obitmap | $xstatenum << 9;

    # Value is the X move plus the shifted new X state number
    my $value= $xmove | $newxstatenum << 4;
    $ROM[$addr]= $value;

    #printf("%s %s => %d %s\n", $ostate, $xstate, $xmove, $newxstate);
    #printf("%x %x => %x %x\n\n", $obitmap, $xstatenum, $xmove, $newxstatenum);

    # Also put in the Ostate newXstatenum doing nothing but
    # pointing back to the same newXstatenum
    $addr= $obitmap | $newxstatenum << 9;
    $value= $xmove | $newxstatenum << 4;
    $ROM[$addr]= $value;
  }
}



# Write out the ROM
open( my $OUT, ">", "ttt.rom" ) || die("Can't write to ttt.rom: $!\n");
print( $OUT "v2.0 raw\n" );
for my $i ( 0 .. ( 2**13 - 1 ) ) {
    printf( $OUT "%x ", $ROM[$i] ? $ROM[$i] : 0 );
    print( $OUT "\n" ) if ( ( $i % 8 ) == 7 );
}
close($OUT);
