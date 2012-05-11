---
layout: post
title: Find magic number in array, where a[i]=i
categories: recursion dp careercup
---

## Problem
Find magic number in array, where a[i]=i

## Algorithm
Modify binary search to fit this problem

## Code
int findMagicNum(int low, int high) {
	int mid = (low + high) / 2;
	if(a[mid] == mid) { // found magic number
		return mid;
	}
	if(a[mid] > mid) {// look on left side of mid
		return findMagicNum(low, mid -1);
	}
	if(a[mid] < mid) { // look on right side of mid
		return findMagicNum(mid+1, high);
	}
	return -1;
}

## Time complexity
O(log n)