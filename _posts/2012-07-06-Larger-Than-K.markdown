---
layout: post
title: Find first element larger than k in a sorted array
categories: arrays search afi
---

## Problem
Design an efficient algorithm that finds the index of the first occurrence of an element larger than a specified key k; return -1 if every element is less than or equal to k

## Algorithm
- Modify binary search 
- Let it terminate at k, if k is duplicate let it terminate at the rightmost occurrence of k
- Now if this index is the last element of the array then return -1
- Else return the next element to the right of this index

##
{% highlight cpp %}

// 1.3 Find first element larger than k in a sorted array

#include <iostream>

// @returns first element larger than k, else -1
// assumes the array is sorted in increasing order
int firstLargestElement(int a[], int n, int k) {
	int low, mid, high = 0;
	high = n-1;
	while(low <= high) {
		mid = (low+high)/2;
		if(a[mid] == k && (mid == n-1 || a[mid+1] != k)) {
			if(mid == n-1) return -1;
			if(a[mid+1] > k) return a[mid+1];
		}
		else if(a[mid] <= k) low = mid + 1;
		else high = mid - 1;
	}
}

int main(){
	int n, k, a[10];
	std::cin >> n;
	for(int i=0; i<n; i++){
		std::cin >> a[i];
	}
	std::cin >> k;
	std::cout << "First element larger than " << k << " is " 
		<< firstLargestElement(a, n, k) << std::endl;
}

{% endhighlight %}

## Time complexity
- O(log n), since its similar to binary search
- Since we are reducing the search space in half for every iteration it is logarithmic in the size of the search space