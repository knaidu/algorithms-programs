---
layout: post
title: Implement insertion sort
categories: sorting arrays
---

## Problem

Implement insertion sort on an array of integers.

## Example

Input: 1, 5, 3, 2, 9, 4

Output: 1, 2, 3, 4, 5, 9

## Algorithm

1. Iterate through the array
2. Pick each element and move it right until you find its correct position.
3. Correct position is when all elements to its left are less than current element, 
and the next element to its right is greater than current element. 
4. Repeat above procedure for all elements.
5. When iteration is complete, the elements will be in sorted order.

## Code    
{% highlight cpp %}

// returns 0 on ERROR, else returns 1
int insertionSort(int a[], int n) {
	// Validate size of array n, return invalid rcode
	
	// Sort
	for (i = 0; i<n; i++){
		for(j = i; j<n; j++){
			if(a[j+1]>a[j]) swap(a[j+1], a[j]);
		}
	}
	return 1;
}

void main() {
	const int n = 5;
	int a[n] = {1, 5, 3, 6, 4};
	insertionSort(a, n);
	printArray(a);
}    
{% endhighlight %}

## Time complexity

O(n^2)

For every element in the array we compare against every other element, we have 2 nested for loops. 

