---
layout: post
title: Search for an element in an array of unknown length
categories: afi arrays search hard
---

## Problem
Search for an element in an array of unknown length

## Algorithm
- First find approximate length of array or search space
- to do this, use 2^k and increment k until we have a[2^k] > x or we get an exception
- Now we now our search space, do a binary search from a[2^(k-1)] to a[2^k]
- Similarly we can search for first occurrence or last occurrence or something similar that can be achieved with binary search

## Code
{% highlight cpp %}

// 1.5 Search an array of unknown length

#include <iostream>

// @returns index of element, else -1
// @assumes array is sorted
int searchUnknownLength(int a, int x) {
	int k = 0;
	int index = 0;
	// keep looping until exception or until we find an element larger than x
	while(true) {
		try {
			index = (k << 1) - 1;
			if(a[index] == x) return index;
			else if(a[index] > x) break;
		}
		catch (exception e) {
			break;
		}
	}
	
	// Now do a binary search from start = current index >> 1, 
	// to end = current index
	int low = index >> 1;
	int high = index;
	int mid = 0;
	while (low <= high) {
		mid = (low + high) / 2;
		if(a[mid] == x) return mid;
		else if (a[mid] < x) low = mid +1;
		else high = mid -1;
	}
	return -1; // element not found
}

int main() {
	int n, k;
	std::cin >> n;
	for(int i=0; i<n; i++) {
		std::cin >> a[i];
	}
	std::cin >> k;
	std::cout << "Searching for " << k << ", found at " 
		<< searchUnknownLength(a, k) << std::endl;
}

{% endhighlight %}

## Time complexity
- O(logn), since its similar to binary search