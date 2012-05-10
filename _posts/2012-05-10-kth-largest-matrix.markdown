---
layout: post
title: Find the kth largest element in a row and column martix.
categories: matrix tricky careercup.com
---

## Problem 
Given an NxN matrix, that has rows in sorted ascending order and columns in ascending sorted order. Find the kth largest element in this matrix

## Example
{% highlight cpp %}

135
246 
789

3rd largest is 7

{% endhighlight %}

## Algorithm
1. Since the matrix is in sorted ascending order, we essentially need to find ((n*n) -k)th smallest element
2. We know the smallest element is at 0,0.
3. Remove that element and replace it with a random large value MAX
4. Filter it to its right position
5. Now repeat this k times till you find the kth smallest element

## Code
{% highlight cpp %}

// returns the kth largest element
int kthLargest(int a[][], int n) {

}

{% endhighlight %}


