---
layout: post
title: Shuffle the array a1..an,b1..bn 
categories: careercup hard arrays
---

## Problem
Given an array in the format

a1,a2,...an,b1,b2,...bn

Shuffle it in the following order

a1,b1,a2,b2,....an,bn

## Algorithm
- Split the array into 4 postions
- Swap the middle two portions
- Repeat this recursion on left portion and right portion of the array
- Repeat until the size of the array is 4

## Code
{% highlight cpp %}

void shuffleArray(int a[], int n){
	int mid = n/2;
	int left = n/4;
	int right = n * 3/4;
	
	if(n==2) return;
	
	swap(a, left, right, n/4);
	shuffleArray(a, n/2);
	shuffleArray(&a[n/2], n/2);
}

void swap(int a[], int start, int end, int howMany){
	// swap integers from start index to end index
}

{% endhighlight %}