---
layout: post
title : Find first occurrence of an integer in an array
categories: afi arrays search
---

## Problem
Write a method that takes a sorted array A of integers and a key k and returns the index of first occurrence of k in A. Return -1 id k does not appear in A.

## Algorithm
- Modify binary search
- Instead of equality condition test for equality condition + if the index is the starting index for a series of duplicate numbers which is the search index.
- In all other cases follow same condition as binary search

## Code
{% highlight cpp %}

// 1.2 Find first occurrence of k in a sorted array

#include <iostream>

int firstOccurrence(int a[], int n, int k){
	int low, mid, high = 0;
	high = n-1;
	while(low <= high){
		mid = (low + high)/2;
		if(a[mid] == k && (mid == 0 || a[mid-1] != k)) {
			return mid;
		}
		else if(a[mid] < k) {
			low = mid + 1;
		}
		else {
			high = mid - 1;
		}
	}
	return mid;
}

int main(){
	int n, k = 0;
	int a[10];
	std::cin >> n;
	for(int i=0; i<n; i++){
		std::cin >> a[i];
	}
	std::cin >> k;
	std::cout << "First occurrence of " << k << " is at " 
		<< firstOccurrence(a, n, k);
}

{% endhighlight %}

## Time complexity
- O(logn), same as binary search, since we are reducing the search space by half for every iteration