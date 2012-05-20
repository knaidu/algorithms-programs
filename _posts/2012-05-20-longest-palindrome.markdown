---
layout: post
title: Find the longest palindrome in a string
categories: careercup string hard
---

## Problem
Given a string, find the longest palindrome in it

## Algorithm
Suffix tree option

- Reverse the current string,
- Now reduce the current problem to finding longest substring problem
- Use the reversed and original string and find the longest substring among them
- O(n)

Expand around center solution

- Use a length array, which maintains length of longest palindrome around all possible centers
- Optimize this, instead of looking at all the centers, select centers to search in a smart way
- One property exhibited by a palindrome string is, the value of lengths array on the right of the current center is the same or grater than the values on the left of current center.
- Also, this means we need not look at all possible centers, we can jump to search the next unknown center length.
- O(n)

## Code
{% highlight cpp %}


/* Function calculates longest palindrome
 * @returns - 1 for success, else invalid rcode for failure 
int findLongestPalindrome(std::string str, std::string& palindrome) {
	// Validate inputs and return rcode
	// ...
	
	// Reverse input string
	std::string reversedString = reverseString(str);
	
	// Generate suffix tree for string
	SuffixTree s = new SuffixTree(str);
	
	// Find longest substring
	palindrome = s.findLongestSubstring(str, reversedString);
	
	return 1;
}

{% enghighlight %}

## Time complexity
Linear time for computing longest palindrome, since suffix tree is preprocessed.
