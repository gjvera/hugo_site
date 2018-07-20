---
title: "Problem 54"
description: ""
slug: "problem54"
keywords: ""
categories: 
    - ""
    - ""
date: 2017-10-31T21:28:43-05:00
draft: false
---
Perl6
{{< highlight go  "linenos=inline">}}
enum Hand-types (High-Card => 1, One-Pair => 2, Two-Pair => 3, Three-Kind => 4, Staight => 5, Flush => 6, 
Full-House => 7, Four-Kind => 8, Straight-Flush => 9, Royal-Flush => 10);
enum HIGH-CARDS ( TEN => 10, JACK => 11, QUEEN => 12, KING => 13, ACE => 14 );

sub check-high-card(@nums) {
    if @nums.contains('A') { return ACE.value }
    elsif @nums.contains('K') { return KING.value }
    elsif @nums.contains('Q') { return QUEEN.value }
    elsif @nums.contains('J') { return JACK.value }
    elsif @nums.contains('T') { return TEN.value }
    else { return max @nums} ;
}

sub is-two-pair(@nums) {
    if @nums.unique.elems == 5 { return High-Card.value }
    else { return Two-Pair.value }
}

sub is-three-kind(@nums) {
    if @nums.unique.elems >= 4 { return is-two-pair(@nums)  }
    else { return Three-Kind.value } ;
}

sub is-four-kind(@nums) {
    if @nums.unique.elems >= 3 { return is-three-kind(@nums) }
    else { return Four-Kind.value }
}

sub is-full-house(@nums, $in-flush) {
    if is-two-pair(@nums) and is-three-kind(@nums) {
        my $iterator = 0;
        if @nums[$iterator] ~~ @nums[$iterator + 1] {
            if @nums[$iterator] ~~ @nums[$iterator + 2] {
                $iterator = 3
            }
            else{
                $iterator = 2
            } 
        } 
        else {
            if $iterator ~~ 3 {
                if @nums[$iterator] ~~ @nums[$iterator + 1] { return Full-House.value; }
                else { return is-straight(@nums, False) ; }
            }
            elsif $iterator == 2 {
                if @nums[$iterator] ~~ @nums[$iterator + 1] ~~ @nums[$iterator + 2] {
                    return Full-House.value
                }
                else { return is-straight(@nums, False) ; }
            }
        }
    }
    else { return False; }
}

sub check-suits(@suits) {
    my $suit-to-check = @suits[0];
    for @suits -> $suit {
        if $suit !eq $suit-to-check { return False; }
    }
    return True;
}

sub is-royal-flush(@nums) {
    #sorted will put A J K Q T
    return @nums ~~ <'A' 'J' 'K' 'Q' 'T'>
}

sub is-straight(@nums, $check-for-flush) {
    if (@nums[0].Numeric !~~ Failure) == True and @nums[0] == 9 {
        #check for 9 Ten J Q K
        if @nums ~~ < 9 'J' 'K' 'Q' 'T'> { return True; }
        else { if $check-for-flush { return False; } else { return is-three-kind(@nums) } }
    } 
    elsif (@nums[0].Numeric !~~ Failure) == True and @nums[0] <= 5 { 
        if @nums ~~ < (@nums[0]) (@nums[0] + 1) (@nums[0] + 2) (@nums[0] + 3) (@nums[0] + 4) > { return True; }
        else { if $check-for-flush { return False; } else { return is-three-kind(@nums) }}
    } 
    elsif (@nums[0].Numeric !~~ Failure) == False { #if first element isn't a number there's only face cards or 10  
        if @nums ~~ < 'A' 'J' 'K' 'Q' 'T' > { return True; }
        else { if $check-for-flush { return False; } else { return is-three-kind(@nums) } }
    }
    elsif (@nums[0].Numeric !~~ Failure) == True and @nums[0] == 6 {
        if @nums ~~ < 6 7 8 9 'T' > { return True; }
        else { if $check-for-flush { return False; } else { return is-three-kind(@nums) } }
    }
    elsif (@nums[0].Numeric !~~ Failure) == True and @nums[0] == 7 {
        if @nums ~~ < 7 8 9 'J' 'T' > { return True; }
        else { if $check-for-flush { return False; } else { return is-three-kind(@nums) } }
    }
    elsif (@nums[0].Numeric !~~ Failure) == True and @nums[0] == 8 {
        if @nums ~~ < 8 9 'J' 'Q' 'T' > { return True; }
        else { if $check-for-flush { return False; } else { return is-three-kind(@nums) } }
    }   
    else{
        say "ERROR with checking straight @nums[]"
    }
}

sub is-flush(@hands){
    my @suits;
    my @nums;
    for @hands -> @hand {
        @suits.push: @hand[1];
        @nums.push: @hand[0];
    }
    if check-suits(@suits) {
        if is-royal-flush(@nums.sort) { return Royal-Flush.value; }
        elsif is-straight(@nums.sort, True) { return Straight-Flush.value; }
        elsif is-four-kind(@nums.sort) { return Four-Kind.value; }
        elsif is-full-house(@nums.sort, True) == Full-House.value { return Full-House.value; }
        else { return Flush.value } 
    }
    else { return is-full-house(@nums, False); } 
    return 1;
}

sub Player-One-Wins(@player1, @player2){
    say "Player 1: @player1[] -- Player 2: @player2[]";
    my $player1-hand-type = get-hand-type(@player1);
    my $player2-hand-type = get-hand-type(@player2);
    if $player1-hand-type > $player2-hand-type {
        say "PLAYER 1 WINS: $player1-hand-type[] beats $player2-hand-type[]";
        return 1;
    } 
    elsif $player1-hand-type == $player2-hand-type {
        my @temp = @player1>>.comb;
        my @temp2 = @player2>>.comb;
        my @player1nums;
        my @player2nums;
        for @temp -> @i { @player1nums.push: @i[0]; }
        for @temp2 -> @j { @player2nums.push: @j[0]; }
        if check-high-card(@player1nums) > check-high-card(@player2nums) { say "PLAYER 1 WINS! &check-high-card(@player1nums)[] beats &check-high-card(@player2nums)[]"; return 1; }
        else { say "PLAYER 2 WINS!"; return 0; }
    }
    else { say "PLAYER 2 WINS! $player2-hand-type[] beats $player1-hand-type[]"; return 0; }
}
sub get-hand-type(@hand){
    return is-flush(@hand>>.comb);
}

my @player-hands = slurp.lines.words.rotor(5);
my $iterator = 0;
my $count = 0;
for @player-hands -> @player1, @player2 {
    $count += Player-One-Wins(@player1, @player2); 
}
say $count
{{< /highlight >}}
