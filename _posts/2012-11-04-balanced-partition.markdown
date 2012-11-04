---
layout: post
title: Balanced parition problem
categories: arrays afi dp
---

## Problem
Given an array of numbers, is a partition possible such that the sum of 
the 2 partitions are equal

## Example

- Input: 1 2 3

- Output: 1,2 | 3

## Algorithm

   * Use a boolean array T, T[i] has a 1 if i is a sum that some elements can add up to.
   * Consider some location of T[j] that has a 1 in it. 
     It corresponds to some subset of the previous numbers that adds up to j. 
   * If we add C[i] to that subset, we will get a new subset with total sum j+C[i]. 
     So we should set T[j+C[i]] to true as well.
   
## Code
{% highlight cpp %}

int partitionExists(int a[], int n) {
	int t[1000];
	
	// calculate sum
	int sum = 0;
	for(int i = 0; i<n; i++)
		sum += a[i];
	
	// intintalize t
	for(int i=0; i<n; i++) 
		t[i] = 0;
	
	// set 1st element to be true (since 0 elements form a set)
	t[0] = 1;
		 
	for(int i=0; i<n; i++) {
		for(int j=sum - a[i]; j>=0; j++) {
			if(t[j] == 1) t[j + a[i]] = 1;
		}
	}
	
	return t[sum/2];
}

{% endhighlight %}

## Time complexity

O(n^2)


