---
layout: post
title: Find lowest positive number not in the array
categories: array careercup
---

## Problem
Given an array of positive and negative integers, find the lowest possible positive integer not present in the array

## Algorithm
- Use a hast table
- Parse the array, for every positive integer we see mark it in the hash table, skip the negative integers
- Walk the hash and find the lowest positive integer

## Code
{% highlight cpp %}

int lowestPositiveNum(int a[]){
	std::vector<int> hash;
	for(int i=0; i < n; i++){
		if(a[i]>0) hash[i] = 1;
	}
	for(int i=0; i< hash.size(); i++)
		if(hash[i] != 1) return i;
	}
	return hash.size()+1;
}

{% endhighlight %}

## Time complexity
O(n)