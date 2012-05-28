---
layout: post
title: Permutation arrays
categories: arrays uva cp
---

## Problem
Given an array of floating point numbers and an array of how they should be ordered, write a program to print them in the permuted order

## Example

Input

3 1 2
32.0 54.7 -2

Output

54.7
-2
32.0

## Algorithm
- Use an vector to store the order, and another vector to store the values
- Use an output vector for printing the permuted/sorted result
- Parse over the value array, lookup its order and insert into the output vector
- Print the output vector

## Code
{% highlight cpp %}

int permutationArrays(int a[], int order[], int n){
	int result[];
	for(int i=0; i< n; i++){
		result[order[i]] = a[i];
	}
	for(int i=0; i< n; i++) {
		std::cout << result[i] << std::endl;
	}
}

{% endhighlight %}

## Time complexity
O(n)