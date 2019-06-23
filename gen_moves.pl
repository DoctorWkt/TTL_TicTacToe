#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# This code comes from a version of tic-tac-toe that I wrote for Minix. See
# https://minnie.tuhs.org/cgi-bin/utree.pl?file=Minix2.0/src/commands/simple/ttt.c

# Copyright 1988 by Warren Toomey	wkt@tuhs.org
#
# You may freely copy or distribute this code as long as this notice
# remains intact.
#
# You may modify this code, as long as this notice remains intact, and
# you add another notice indicating that the code has been modified.
#
# You may NOT sell this code or in any way profit from this code without
# prior agreement from the author.
# 

# Static evaluator. Returns 100 if we have 3 in a row, -100 if they have 3
# in a row or 0 if no winner. The board is an array of 10 chars, the zeroth
# element is the player. Values are ' ' (empty), 'X' or 'O'.
sub stateval
{
  my @b= @_;

  # Negate the win value based on the player
  my $win= ($b[0] eq 'X') ? 100 : -100;

  return($win)  if ($b[1] eq 'X' && $b[2] eq 'X' && $b[3] eq 'X');
  return($win)  if ($b[4] eq 'X' && $b[5] eq 'X' && $b[6] eq 'X');
  return($win)  if ($b[7] eq 'X' && $b[8] eq 'X' && $b[9] eq 'X');
  return($win)  if ($b[1] eq 'X' && $b[4] eq 'X' && $b[7] eq 'X');
  return($win)  if ($b[2] eq 'X' && $b[5] eq 'X' && $b[8] eq 'X');
  return($win)  if ($b[3] eq 'X' && $b[6] eq 'X' && $b[9] eq 'X');
  return($win)  if ($b[1] eq 'X' && $b[5] eq 'X' && $b[9] eq 'X');
  return($win)  if ($b[3] eq 'X' && $b[5] eq 'X' && $b[7] eq 'X');
  return(-$win) if ($b[1] eq 'O' && $b[2] eq 'O' && $b[3] eq 'O');
  return(-$win) if ($b[4] eq 'O' && $b[5] eq 'O' && $b[6] eq 'O');
  return(-$win) if ($b[7] eq 'O' && $b[8] eq 'O' && $b[9] eq 'O');
  return(-$win) if ($b[1] eq 'O' && $b[4] eq 'O' && $b[7] eq 'O');
  return(-$win) if ($b[2] eq 'O' && $b[5] eq 'O' && $b[8] eq 'O');
  return(-$win) if ($b[3] eq 'O' && $b[6] eq 'O' && $b[9] eq 'O');
  return(-$win) if ($b[1] eq 'O' && $b[5] eq 'O' && $b[9] eq 'O');
  return(-$win) if ($b[3] eq 'O' && $b[5] eq 'O' && $b[7] eq 'O');
  return(0);
}

# Given a board array, whose move it is, and some alpha/beta cutoffs,
# return the value of the move and the move that player should make.
# Element 0 of the board is the player making the move.
sub alphabeta
{
  my ($alpha, $beta, @b)= @_;
  my $whosemove= $b[0];

  # See if there is already a winner
  my $staticvalue = stateval(@b);
  if ($staticvalue == 100 || $staticvalue == -100) {
    return($staticvalue);
  }

  # No result, so set the best value to the beta cutoff
  my $bestscore = $beta;
  my $bestmove = 0;
  my $mademove = 0;

  # Determine the other player, to be used in the loop
  my $otherplayer= ($whosemove eq 'O') ? 'X' : 'O';

  foreach my $i (1 .. 9) {
    if ($b[$i] eq ' ') {		# For all valid moves
      $mademove = 1;
      $b[$i]= $whosemove;		# Make that move
      $b[0] = $otherplayer;		# Evaluate it as the other player
					# Get the value of the move
      my ($succvalue, $succmove)= alphabeta(-$bestscore-1, -$alpha-1, @b);

      $b[0] = $whosemove;		# Undo the move
      $b[$i]= ' ';

      if (-$succvalue > $bestscore) {	# If a better score
	$bestscore= -$succvalue;	# Update our value and move
	$bestmove = $i;
      }

      last if ($bestscore > $alpha);	# Return if we've beaten alpha
    }
  }

  if ($mademove) {			# Return the best score and move
    return($bestscore, $bestmove);
  } else {				# or the static evaluation
    return($staticvalue);
  }
}

# Print out the board
sub printboard
{
  print(" $_[1] | $_[2] | $_[3]\n");
  print("---+---+---\n");
  print(" $_[4] | $_[5] | $_[6]\n");
  print("---+---+---\n");
  print(" $_[7] | $_[8] | $_[9]\n\n");
}

# Determine end of game. Return true if the end
sub endofgame
{
  my @b= @_;
  $b[0]= 'X';
  my $eval = stateval(@b);
  print("I win\n") if ($eval == 100);
  print("You win\n") if ($eval == -100);
  my $count=0;
  foreach my $i (1 .. 9) {
    $count++ if ($b[$i] ne ' ');
  }
  print("A draw\n") if ($count == 9);
  return(1) if ($eval == 100 || $eval == -100 || $count == 9);
  return(0);
}

sub run_games
{
  my ($level,@b)= @_;                  # Get the board when it is O's move
  # print("Run games level $level\n");
  # Build a copy of the board before we do anything to it
  my $origboard= join('', @b[1..9]);
  $origboard=~ s{ }{_}g;
  foreach my $omove (1..9) {
    next if ($b[$omove] ne ' ');        # Skip occupied cells
    $b[$omove]= 'O';
    $b[0]= 'O';
    if (stateval(@b)!=0) {		# If a win
      $b[$omove]= ' '; next;		# Go on to next move
    }

    # Build a copy of the board after the O move
    my $oboard= join('', @b[1..9]);
    $oboard=~ s{ }{_}g;

    # See if a tie
    my $count=0;
    foreach my $i (1 .. 9) {
      $count++ if ($b[$i] ne ' ');
    }
    if ($count==9) {
      print("$oboard tie\n");
    }

    # Make our move
    $b[0]= 'X';
    my ($xscore, $xmove)= alphabeta(99, -99, @b);
    if (defined($xmove)) {
      $b[$xmove]= 'X';
 
      # Build a copy of the board after the X move
      my $xboard= join('', @b[1..9]);
      $xboard=~ s{ }{_}g;

      # See if this is a win
      my $winresult= stateval(@b);
      if ($winresult==100) {
        print("$oboard X move $xmove win $xboard\n");
      } else {
        print("$oboard X move $xmove $xboard\n");

        # See if a tie
        my $count=0;
        foreach my $i (1 .. 9) {
          $count++ if ($b[$i] ne ' ');
        }
        if ($count==9) {
          print("$xboard tie\n");
        }
      }

      # Now recurse to do all the next O moves
      run_games($level+2,@b);

      # Undo the X and O moves
      $b[$xmove]= ' ';
    }
    $b[$omove]= ' ';
  }
}

#### MAIN PROGRAM ####

# Generate moves where X goes first
my $xfirst=0;
while (@ARGV > 0) {
  if ($ARGV[0] eq "-xfirst") { $xfirst=1; shift(@ARGV); next; }
}

# Initialise the board
my @b;
if ($xfirst) {
  @b= (' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
} else {
  @b= (' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
}
run_games(1,@b);
exit(0);
