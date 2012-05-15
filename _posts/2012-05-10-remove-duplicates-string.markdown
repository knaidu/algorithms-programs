---
layout: post
title: Remove duplicates from string without additional buffer
categories: strings careercup
---

## Problem
Design an algorithm and write code to remove the duplicate characters in a string without using any additional buffer. NOTE: One or two additional variables are fine, an extra copy of the array is not.

## Algorithm
Use a bit array of size 256 (to represent the entire char set)

1. Parse the string and mark in bit array that the char is present
2. While parsing if the char has already been marked, then its a duplicate
3. Use 2 pointers, 1 to read and 1 to write so this can be done in place instead of using additional array

## Code
{% highlight cpp %}

void removeDuplicates(std::string str, int len) {
	char map[256];
	int j = 0;
	for(int i=0; i< n; i++) {
		if(map[str[i]] != 1) {
			map[str[i]] =1; // mark as seen
			str[j] = str[i];   // copy into dest array
			j++;
		}
		else {
			i++;
		}
	}
}

{% endhighlight %}

## Time complexity
O(n + k) k the time for lookup which can be assumed to be constant for a fixed size of 256.