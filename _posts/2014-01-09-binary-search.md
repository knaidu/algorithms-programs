---
layout: post
title: Binary Search - Iterative and recursive
---

## Problem

Given an array containing integers in sorted order, perform binary search on it.

## Algorithm

1. Check middle element of the array in consideration
2. If its larger than the key then perform search only the left sub-array
3. If its smaller then key then perform search only on the right sub-array
4. Recurse until we find the key element or run out of elements to search

## Code

{% highlight ruby %}
{% include _code/binary_search.rb %}
{% endhighlight %}

## Tests

{% highlight ruby %}
{% include _code/binary_search_spec.rb %}
{% endhighlight %}

## Time Complexity

- O(log n)
- At each stage in the search we are narrowing the search space by half