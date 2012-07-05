---
layout: post
title: Find square root of a number
categories: search afi easy
---

## Problem
Implement a fast integer square root function that takes in a 32-bit unsigned integer and returns another 32 bit unsigned integer that is the floor of the square root of the input

## Algorithm
- Use Binary search in the space of the numbers from 1 leading upto n/2.
- For non perfect squares handle the special condition carefully

## Code 
{% highlight cpp %}

// 1.1 Find square root of a number 

#include <iostream>

// @returns square root or -1 for invalid inputs
int squareRoot(int n){
	int low, mid, high = 0;
	if(n <= 0) return -1;
	
	low = 0;
	high = n/2;
	mid = (low + high)/2;
	while (low <= high) {
		int midSquared = mid*mid;
		if(midSquared == n) { // FOUND
			return mid;
		}
		else if(midSquared > n) {
			if(high == mid) return mid;
			high = mid;
			mid = (low + mid)/2;
		}
		else if(midSquared < n) {
			if(low == mid) return mid;
			low = mid;
			mid = (mid + high)/2;
		}
	}
	return mid;
}

int main(){
	int n;
	std::cin >> n;
	std::cout << "Square root of " << n << " is " << squareRoot(n) << std::endl;
}

{% endhighlight %}

## Time complexity
- O(logn), since we are using binary search
- With each iteration we are reducing the search space in half
- Hence we have a logarithm run time.