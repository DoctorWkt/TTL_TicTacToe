#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $debug=0;

# Set of 2^13 ROM values. Each value is 8 bits.
# Low 4 bits are the # new X move (0= no more, 1= move 1 etc.).
# Move 14 is a tie, move 15 is a board win.
# High 4 bits are the next X state value.
#
# The 13-bit address is composed of the low 9 bits being
# the bit pattern of the user's moves. The 4 bits above this
# are the X state value from the previous round.

my @ROM;

# %State holds the Ostate (set of O moves), pointing to the Xstate
# (current set of X moves), pointing to the next X move and
# the next Xstate.
my %State;

# Given the board state as a 9-char string, return two
# strings with just the O moves and just the X moves
sub o_and_x_states {
    my $board = shift;
    my ( $oboard, $xboard ) = ( $board, $board );
    $oboard =~ s{X}{_}g;
    $xboard =~ s{O}{_}g;
    return ( $oboard, $xboard );
}

# Given the board state as a 9-char string, return a 9-bit
# value representing the O moves.
sub omove_bitmap {
    my $state   = shift;
    my $obitmap = 0;

    # Reverse the letters in the string so we get move 9 first
    foreach my $letter ( reverse( split( m{}, $state ) ) ) {
        $obitmap = $obitmap << 1;
        $obitmap |= 1 if ( $letter eq "O" );
    }
    return ($obitmap);
}

# Record the state number for an Xstate, also record if we have
# visited the Ostate in the following recursive solution.

my %Xstateval;
my %Ostateseen;

# For each Xstate, record the Ostates that are related to it.
my %Oset;

# Given an Xstate,
# allocate a state number to the Xstate. Then find the
# related Ostates, find their Xstates and repeat. Enforce
# the constraint that no Xstate numbers can be the same
# for any of the Xstates related to one Ostate.
# Returns 1 if OK, 0 on error.
sub allocate_statenums2 {
    no warnings 'recursion';
    my $xstate = shift;

    #print("Got $xstate\n");

    # Do nothing if we have already done this Xstate
    return (1) if ( defined( $Xstateval{$xstate} ) );

    # Try all possible state numbers
    my $ranout = 1;
    foreach my $possx ( 0 .. 15 ) {

        #print("  trying state $possx\n");
        my $alreadyused = 0;

        # Walk the list of associated Ostates
        foreach my $ostate ( keys( %{ $Oset{$xstate} } ) ) {

            # Walk the list of Xstates for this Ostate
            foreach my $x ( keys( %{ $State{$ostate} } ) ) {

                # We have a problem if this Xstate's number
                # matches the one we are trying to allocate
                my $xnum = $Xstateval{$x};
                if ( defined($xnum) && ( $xnum == $possx ) ) {

                    #printf("    $xnum already used by $x\n");
                    $alreadyused = 1; last;
                }
                last if ($alreadyused);
            }
            last if ($alreadyused);
        }

        # We've searched all Ostates and their Xstates. If the
        # state number hasn't already been used, use it now
        if ( !$alreadyused ) {
            $Xstateval{$xstate} = $possx;
            print("Allocate number $Xstateval{$xstate} for $xstate\n") if ($debug);
            $ranout = 0; last;
        }
    }

    # Error if we ran out of state numbers
    if ($ranout) {
        print("Out of possible state numbers for $xstate\n"); return (0);
    }

    # Choose another Xstate that needs a state number
    foreach my $newxstate ( keys(%Oset) ) {
        next if ( defined( $Xstateval{$newxstate} ) );
        return (0) if ( allocate_statenums2($newxstate) == 0 );
    }
    return (1);
}

#### MAIN PROGRAM ####

# Enable debugging
while (@ARGV > 2) {
  # Set debug mode
  if ($ARGV[0] eq "-d") { $debug++; shift(@ARGV); next; }
}

# Require user to name the output file
die("Usage: $0 [-d] moves_file outputfile.rom\n") if (@ARGV!=2);

# Open up the moves file which shows the board state after a user move,
# the X move to make and the board result. Also shows a win or a tie.
# The moves look like:
#
# O__OX____ X move 7 O__OX_X__
# OOXXOOOXX tie
# _OOXXO_OX X move 1 win XOOXXO_OX
#
# Generated with: ./gen_moves.pl |sort | uniq > moves

open( my $IN, "<", $ARGV[0] ) || die("Can't read $ARGV[0]: $!\n");
while (<$IN>) {
    chomp;

    # Parse a tie
    if (m{^(.*) tie}) {
        my $state = $1;

        # Get the Ostate and Xstate patterns
        # Record the relationship between the two in %Oset
        my ( $ostate, $xstate ) = o_and_x_states($state);
        $Oset{$xstate}{$ostate} = 1;

        # Make the move light up the tie LED, and return
        # back to this state
        $State{$ostate}{$xstate}{move}      = 14;
        $State{$ostate}{$xstate}{newxstate} = $xstate;
        next;
    }

    # Parse a win
    if (m{^(.*) X move (\d) win (.*)}) {
        my ( $state, $xmove, $newstate ) = ( $1, $2, $3 );

        # Get the Ostate and Xstate patterns
        # Record the relationship between the two in %Oset
        my ( $ostate, $xstate ) = o_and_x_states($state);
        $Oset{$xstate}{$ostate} = 1;

        # Get the future Xstate. Record the best X move
        # from here, and what the next Xstate will be.
        my ( undef, $newxstate ) = o_and_x_states($newstate);
        $State{$ostate}{$xstate}{move}      = $xmove;
        $State{$ostate}{$xstate}{newxstate} = $newxstate;

        # Also set up a move to light up the win LED, and
        # return back to the new Xstate
        $Oset{$newxstate}{$ostate}             = 1;
        $State{$ostate}{$newxstate}{move}      = 15;
        $State{$ostate}{$newxstate}{newxstate} = $newxstate;
        next;
    }

    # Ordinary move
    if (m{^(.*) X move (\d) (.*)}) {
        my ( $state, $xmove, $newstate ) = ( $1, $2, $3 );

        # Get the Ostate and Xstate patterns
        # Record the relationship between the two in %Oset
        my ( $ostate, $xstate ) = o_and_x_states($state);
        $Oset{$xstate}{$ostate} = 1;

        # Get the future Xstate. Record the best X move
        # from here, and what the next Xstate will be.
        my ( undef, $newxstate ) = o_and_x_states($newstate);
        $State{$ostate}{$xstate}{move}      = $xmove;
        $State{$ostate}{$xstate}{newxstate} = $newxstate;

	# Watch out if the X move resulted in a tie, don't 
	# change it to a new move
	if (!(defined($State{$ostate}{$newxstate}{move}) &&
	   ($State{$ostate}{$newxstate}{move} == 14))) {
          $State{$ostate}{$newxstate}{move}      = $xmove;
          $State{$ostate}{$newxstate}{newxstate} = $newxstate;
          $Oset{$newxstate}{$ostate}          = 1;
	}
        next;
    }
}
close($IN);

#print Dumper(\%State);
#print Dumper(\%Oset);

# Allocate the state numbers for all the Xstates. We allocate state 0
# to the initial board state, as that is what the state register will
# reset to.
die("Failed to allocate state numbers\n")
  if ( !allocate_statenums2('_________') );

# Ensure the constraint that all Xstate values for each Ostate are unique
foreach my $ostate ( keys(%State) ) {
    my @seen;
    foreach my $xstate ( keys( %{ $State{$ostate} } ) ) {
        my $xstatenum = $Xstateval{$xstate};
        die("$xstate has no state number\n") if ( !defined($xstatenum) );
	# This should really be a fatal error but it seems to
	# still create a ROM which works
        print("state number $xstatenum reused for $ostate\n")
          if ($debug && !defined( $seen[$xstatenum] ) );
        $seen[$xstatenum] = 1;
    }
}

# Now generate the ROM values
foreach my $ostate ( keys(%State) ) {

    # Convert the Ostate into a 9-bit bitmap of O moves
    my $obitmap = omove_bitmap($ostate);

    # Walk along all the Xstates for this Ostate
    foreach my $xstate ( keys( %{ $State{$ostate} } ) ) {

        # Get the state number for this Xstate
        my $xstatenum = $Xstateval{$xstate};

        # Get the X move for this actual state
        my $xmove = $State{$ostate}{$xstate}{move};

        # Get the next Xstate for this actual state
        my $newxstate = $State{$ostate}{$xstate}{newxstate};

        # Get the state number for this new Xstate
        my $newxstatenum = $Xstateval{$newxstate};

        # Address is the O bitmap plus the shifted X state number
        my $addr = $obitmap | $xstatenum << 9;

        # Value is the X move plus the shifted new X state number
        my $value = $xmove | $newxstatenum << 4;
        if ( defined( $ROM[$addr] ) ) {
            printf("Already have $ostate $xstatenum for $xstate\n");
        }
        $ROM[$addr] = $value;
        # printf("$ostate $xstatenum for $xstate\n");

     #printf("%s %s => %d %s\n", $ostate, $xstate, $xmove, $newxstate);
     #printf("%x %x => %x %x\n\n", $obitmap, $xstatenum, $xmove, $newxstatenum);
    }
}

# Write out the ROM
open( my $OUT, ">", $ARGV[1] ) || die("Can't write to $ARGV[1]: $!\n");
print( $OUT "v2.0 raw\n" );
for my $i ( 0 .. ( 2**13 - 1 ) ) {
    printf( $OUT "%x ", $ROM[$i] ? $ROM[$i] : 0 );
    print( $OUT "\n" ) if ( ( $i % 8 ) == 7 );
}
close($OUT);
