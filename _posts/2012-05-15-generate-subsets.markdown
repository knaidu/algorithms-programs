---
layout: post
title: Generate all subsets of a given set
categories: arrays dp ctci
---

## Problem 
Generate all subsets of a given set

## Eaxmple
{1, 2, 3} = {} {1} {2} {3} {1, 2} {1, 3} {2, 3} {1, 2, 3}

## Algorithm
- Given n, elements in a set, it will have 2n subsets
- Use binary number with n digits to represent if the number is present in the set or not
- {} = 000
- {1} = 100

## Code
{% highlight cpp %}

// Input: set
// Output: array list of subsets
// Error: Returns -1
int generateSubsets(std::vector<int>& set, std::vector<std::vector<int>>& subsets){
	if(set.size() == 0) return -1;
	
	for(int i=0; i<set.size(); i++) {
		std::vector<int> s = getSet(i, set);
		subsets.push_back(s);
	}
	return 1;
}

std::vector<set> getSet(int n, std::vector<int>& set){
	int index = 0;
	std::vector<set> s;
	for(int k = n; k != 0; k = k >> 1) {
		if(k&1 == 1) s.push_back(set[index]);
		index ++;
	}
	return s;
}

{% endhighlight %}

## Time complexity
O(2^n), since there are 2^n subsets for a set of size n.