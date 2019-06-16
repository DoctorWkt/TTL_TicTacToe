#!/usr/bin/perl
use strict;
use warnings;

# Board array, element 0 unused.
my @b = ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 );

my @ROM;
my $state = 0;

sub reset_game {
    @b = ( 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 );
    $state = 0;
}

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

sub print_board {
    printf( "\n %s | %s | %s\n", $b[1], $b[2], $b[3] );
    print("---+---+---\n");
    printf( " %s | %s | %s\n", $b[4], $b[5], $b[6] );
    print("---+---+---\n");
    printf( " %s | %s | %s\n", $b[7], $b[8], $b[9] );
}

### MAIN PROGRAM ###

# Load the ROM file, skip first line
my $ROMIN;
open( $ROMIN, "<", "ttt.rom" ) || die("Can't open ttt.rom: $!\n");
<$ROMIN>;
while (<$ROMIN>) {
    chomp; push( @ROM, map( { hex($_) } split( /\s/, $_ ) ) );
}
close($ROMIN);

# Forever play the game
while (1) {
    print_board(); print("Move (1-9): ");
    my $omove = <STDIN>; chomp($omove);

    # Loop back if move already taken
    if ( ( $b[$omove] eq 'O' ) || ( $b[$omove] eq 'X' ) ) {
        print("Can't move there, try again\n"); next;
    }

    # Move there
    $b[$omove] = 'O';

    # Get the Oboard and Xboard strings
    my $board = join( '', @b );
    $board =~ s{0}{}; $board =~ s{\d}{_}g;
    my ( $oboard, $xboard ) = o_and_x_states($board);

    # Get the bitmap
    my $obitmap = omove_bitmap($oboard);

    my $addr      = $obitmap | $state << 9;
    my $value     = $ROM[$addr];
    my $xmove     = $value & 0xf;
    my $nextstate = $value >> 4;
    printf( "oboard %s state %x, obitmap %x addr %x => %x\n",
        $oboard, $state, $obitmap, $addr, $value );

    if ( $xmove == 14 ) {
        print("Tie\n"); reset_game();
    } elsif ( $xmove == 15 ) {
        print("Win\n"); reset_game();
    } else {
        $b[$xmove] = 'X'; $state = $nextstate;

        # If this was a winning move, we have to retry the ROM lookup
        # with the new state
        $addr  = $obitmap | $state << 9;
        $value = $ROM[$addr];
        $xmove = $value & 0xf;
        printf( "test oboard %s state %x, obitmap %x addr %x => %x\n",
            $oboard, $state, $obitmap, $addr, $value );
        if ( $xmove == 15 ) {
            print_board(); print("Win\n"); reset_game();
        }
    }
}
