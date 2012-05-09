---
layout: post
title: Find the next smallest and largest number with same number of 1s
categories: bits tricky careercup
---

## Problem
Find the next smallest and largest number with same number of 1s

## Algorithm
Next largest number

- Find pth digit: 0 which has a trailing 1. This is chosen because for the next larger number this digit will become 1.
- Make pth digit 1, and 0 to pth digit as 0.
- Let c1 be the count of 1s from 0 to p (in the original number)
- Now insert back the 1s from 0 to p, this is done to make the number as small as possible but keeping it larger than current number

Next smallest number

- Find pth digit: 1 which has a trailing 0, This is chosen because for the next smallest number this digit will become 0.
- Make pth digit 0, and set 0 to pth digit as 1.
- let c0 be the count of 0s from 0 to p (in the original number)
- Now insert back 0s from 0 to p, this is done to make the number as high as possible but still keeping it smaller than current number

## Code
int nextLargest(int n) {
	int c= n;
	int c0 = 0;
	int c1 = -;
	
	// Traverse from 0th digit, until you hit a 1
	while(c|1 != 1 && c != 0) {
		c >> 1;
		c0 ++;
	}
	
	// We've hit a 1, not traverse till we find a 0
	while(c|0 != 0 && c != 0) {
		c >> 1;
		c1 ++;
	}
	
	// We've found pth position
	int p = c1 + c0;
	
	// Flip the pth digit to 1
	n = n | (1 << p);
	
	// Clear 0 to pth digit
	n = n & (~0 << p);
	
	// Insert 1s from 0 to p
	n = n | (1 - (1 << c1 + 1));
	
	return n;
}