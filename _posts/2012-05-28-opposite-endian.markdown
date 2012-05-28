---
layout: post
title: One little, two little, three little endians
categories: bits uva cp
---

## Problem
Write a program that will read a list of integers and report the integers that the binary representations of the input integers would represent on an opposite-endian machine.

## Example
Input 

123456789
-123456789
1
16777216
20034556

Output 

123456789 converts to 365779719
-123456789 converts to -349002504
1 converts to 16777216
16777216 converts to 1
20034556 converts to -55365375

## Algorithm
- To convert to the opposite-endian, we must reverse the bytes that make up an integer
- 11110000 10101010 11001100 00110011 => 
  00110011 11001100 10101010 11110000
- 2 methods to do this

1. Use a stack
- read from right to left
- push each byte into stack and right shift
- once all bytes are read, pop from stack, and left shift

2. Use mask to reverse the bytes in the integer

## Code
{% highlight cpp %}

int oppositeEndian(int num){
	// validate
	
	int result = 0;
	int temp = 0;
	int mask = 0x000BBBB;
	
	// for(int i=0; i<4; i++){
		temp = num & mask;
		result = temp | result;
		result = result << 8;
		num = num >> 8;
	}
	return result;
}

{% endhighlight %}

## Time complexity
O(n)