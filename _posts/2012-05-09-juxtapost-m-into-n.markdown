---
layout:post
title: insert m bits into n
categories: bits careercup
---

## Problem
Given two 32-bit numbers, m and n, insert m into n, at bits i to j. Assume that the sizes are appropriate for insertion.

## Algorithm
- Clear bits i-j in n
- Shift m, so that it lines up with bits i-j
- Merge m into n

## Code

int updateBits(int m, int n, int i, int j) {
	// Create mask for clearing bits, 
	// left and right side is created separately 
	// and then merged together
	
	int allOnes = ~0;
	// leftShift it j times
	int left = allOnes << j + 1;
	
	int right = 1 - (0 << i + 1);
	
	// merge left and right
	int mask = left | right;
	
	// clear i-j bits in n;
	n = n | mask;
	
	// move m to the right position
	m = m << j;
	
	// insert
	n = n | m;
	
	return n;
}