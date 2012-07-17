---
layout: post
title: Find the intersection of 2 sorted arrays
categories: afi arrays sorting
---

## Problem
Given sorted arrays A and B of length n and m respectively, return an array C containing elements common to arrays A and B. The array C should be free of duplicates. 

## Algorithm
- Use merge sort technique
- Compare elements from both the arrays and insert the smallest element into the new array C
- Compare the element to be inserted with the last element inserted in C, to avoid duplicates

## Test cases
{% highlight cpp %}
1 2 3
4 5 6
1 2 3 4 5 6

1 2 2
2 3 4
1 2 3 4

1 1 1
2 2 2
1 2

{% endhighlight %}

## Code

{% highlight cpp %}

// Intersect 2 sorted arrays

#include <iostream>

// @returns 1 for success else -1 for error
int intersectSortedArrays(int a[], int b[], int m, int n, int c[], int& k) {
	// Validations
	if(n < 0 || m < 0) return -1;
	
	if(0 == n) {
		c = a;
		return 1;
	}
	if(0 == m) {
		c = b;
		return 1;
	}
	
	// Merge the 2 arrays without any duplicates
	int i=0, j=0;
	k=0;
	while(i<m && j<n){
		if(a[i] < b[j]) {
			if(k>0) {
				if(c[k-1] != a[i]) {
					c[k] = a[i]; k++;
				}
			} 
		else {
				c[k] = a[i]; k++;
			}
			i++;
		} else if(a[i] > b[j]) {
			if(k>0) {
				if(b[j] != c[k-1]) {
					c[k] = b[j]; k++;
				}
			}
			else {
				c[k] = a[i]; k++;
			}
			j++;
		} else if(a[i] == b[j]) {
			if(k>0) {
				if(c[k-1] != a[i]) {
					c[k] = a[i]; k++;
				}
			} 
			else {
				c[k] = a[i]; k++;
			}
			i++; j++;
		}
	}
	
	while(i < m) { // copy remaining elments from a[]
		if(k>0) {
			if(c[k-1] != a[i]) {
				c[k]=a[i]; k++; 
			}
		}
		else {
			c[k] = a[i]; k++; 
		}
		i++;
	}
	
	while(j < n) { // copy remaining elements from b[]
		if(k>0) {
			if(c[k-1] != b[j]) {
				c[k] = b[j]; k++;
			}
		}
		else {
			c[k] = b[j]; k++;
		}
		j++;
	}
	
	return 1;
}

int main(){
	int m = 0;
	int n = 0;
	int k = 0;
	int a[10], b[10], c[20];
	
	for(int i=0; i<20 ; i++){
		c[i] = -99;
	}
	
	std::cout << "Enter size of arrays: " << std::endl;
	std::cin >> m >> n;
	std::cout << "Enter elements of array a" << std::endl;
	for(int i=0; i<m; i++){
		std::cin >> a[i];
	}
	std::cout << "Enter elements of array b" << std::endl;
	for(int i=0; i<n; i++){
		std::cin >> b[i];
	}
	intersectSortedArrays(a, b, m, n, c, k);
	std::cout << "Intersection of the 2 arrays: " << std::endl;
	for(int i=0; i<k; i++){
		std::cout << c[i] << " ";
	}
}

{% endhighlight %}

## Time complexity
- O(n + m), each element is seen once in each array during merge.