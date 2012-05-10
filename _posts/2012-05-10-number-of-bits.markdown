---
layout: post
title: Count number of bits to convert A to B
categories: bits careercup
---

## Problem
Write a program to find out number of bits to convert integer A to integer B

## Algorithm
- To convert A to B, we must figure out how many bits are different in A and B
- Use XOR to figure this out
- Then count number of set bits in XOR result

## Code 
{% highlight cpp %}

int numberOfBits(int A, int B){
	int count = 0;
	for(c = A^B; c !=0; c = c & (c-1)) {
		count += 1;
	}
	return count;
}

{% endhighlight %}