---
layout: post
title: Generate all permutations of a string
categories: strings ctci recursion dp
---

## Problem
Given a string, generate all permutations

## Example
abc = abc, acb, bac, bca, cab, cba

## Algorithm
For a string of size n, we will have n! permutations
- Split the string into 2 parts, the first char and the rest
- Keep first char constant, permute the rest of the chars and concat with first
- repeat this with every char in string
- for each char in str 
	x + permute(string - x)

## Code
{% highlight cpp %}

std::vector<string> permute(std::string str) {
	std::vector<string> s;
	int n = str.size();
	if(n == 1) {
		s.add(str);
		return s;
	}
	
	for(int i=0; i< n; i++) {
		std::string x = str.substr(0, i) + str.substr(i, n);
		s.add(str[i] + permute(x));
	}
	return s;
}

{% endhighlight %}

## Time complexity
O(n!), since there are n! permutations of a string of size n. We cannot do any better than this.