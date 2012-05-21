---
layout: post
title: Bubble 0s in a array to the end of array
categories: arrays careercup
---

## Problem
Given an array that contains numbers including 0s. Write an algorithm to bubble all the 0s to the end of the array in place.

## Algorithm
- Use a read and write pointer
- Copy value from read pointer to write pointer if its non zero value
- Or paraphrasing it, eliminate 0s from array
- Else increment the read pointer
- When end of array is reached, and read pointer is not the same as write pointer, then fill the rest of the array with 0s

## Code
{% highlight cpp %}

void bubbleZeroes(int a[], int n){
	if(n < 1) return;
	int read, write = 0;
	
	// Copy from read to write as long as its non zero
	// Or eliminate 0s from array
	while(read < n) {
		if(read != 0) {
			a[write] = a[read];
			write++;
		}
		read++;		
	}
	
	// Fill rest of array with 0s
	while(read < write) {
		a[write] = 0;
		write ++;
	}
}

{% endhighlight %}

## Time complexity
O(n), simple.