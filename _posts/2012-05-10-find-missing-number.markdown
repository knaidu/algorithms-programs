---
layout: post
title: Find the missing number, given access only 1 bit at a time
categories: bits hard ctci
---

## Problem
Given an array of numbers from O[1..n], find the missing number. You can only access 1 bit of an integer in the array at a time.

## Algorithm
- Given n we know in 0th bit position how many 1s should be present, count the actual value and using this we can figure out bit 0 of the missing number
- Similarly run through all the bits and report the missing number

## Code
{% highlight cpp %}

int findMissingNumber(int a[], int col) {
	// count bits
	for(int i=0; i< n; i++) {
		if(a[i].column(col) == 0) zeroBits += 1;
		else oneBits += 1;
	}
	if(zeroBits <= oneBits) { // 0 is missing
		int v = findMissingNumber(a, col -1);
		return v << 1 | 0;
	}
	else {
		int v == findMissingNumber(a, col-1);
		return v << 1 | 1;
	}
}

{% endhighlight %}