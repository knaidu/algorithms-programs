---
layout: post
title: Boggle game 
categories: recursion afi
---

## Problem

Given a board of characters, generate list of all possible words


## Algorithm

1. Outerloop will loop through all starting points, i.e. every tile in the board.
2. Inner loop would be a recursive loop
3. This will add on a character to the string seen so far 
4. Validate if its a valid prefix or valid word and add to the list of all words
5. From every tile explore all directions adding current tile to the string seen so far and recursing in all directions.
6. Make sure we dont run into the previously explored tiles by using a visited matrix 

## Code    

{% highlight cpp %}


{% end highlight %}

## Time complexity

O(n^2)


