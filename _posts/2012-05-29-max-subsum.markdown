---
layout: post
title: Max subsum problem
categories: array careercup
---

## Problem
Given an array of positive and negative integers, calculate their max subsum. Also return the start and end index of such a set of elements

## Algorithm
- Parse the array, keep track if current max sum
- Update current sum if new sum is greater than current sum
- Update start and end index appropriately

## Code
int maxSubsum(int a[]) {
	int maxSum, currentSum = 0;
	int currentIndex = 0;
	int endIndex = 0;
	
	for(int currentIndex = 1; currentIndex < n; currentIndex++) {
		currentSum += a[currentIndex];
		if(currentSum > maxSum) {
			maxSum = currentSum;
			startIndex = currentIndex;
			endIndex = currentIndex
		}
		if(currentSum < 0){
			currentSum = 0;
			startIndex = currentIndex+1;
		}
	}
	return maxSum;
}

## Time complexity
O(n)