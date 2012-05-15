---
layout: post
title: Swap odd and even bits in an integer
categories: bits ctci
---

## Problem
Swap odd and even bits in an integer

## Algorithm
- Use an odd bit mask and extract odd bits, right shift it by 1.
- Use an even bit mask and extract even bits, left shift by 1.
- Merge the two results.

## Code
int swapOddEven(int a) {
	int odd = a & 0xaa; // 1010
	odd = odd >> 1;
	even = even & 0x5; // 0101
	even = even << 1;
	return (odd | even);
}