---
layout: post
title: Find number of occurrences of a number in an array in O(logn) 
categories: arrays sorting tadm tricky
---

## Problem
Given a sorted array,  find the number of times a given element x occurs in it. Do it in O(logn) time. 

## Example

1, 2, 3, 4, 4, 4, 5, 6

n = 4

Result = 3 times

## Algorithm
- Modify binary search
- Omit the equality test, let the loop continue until it reaches the starting point where the repeating sequence begins
- Now change the condition so that it reaches the other end of the repeating sequence
- Count the number of elements between the two edges

## Code

{% highlight cpp %}

int countOccurrences(int array, int k) {
  int low, high, mid = 0;
  low = 0;
  high = n;
  mid = (low + high) / 2;

  while (a[mid]<k) {
    
  }
}


{% endhighlight%}
