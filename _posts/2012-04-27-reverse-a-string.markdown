---
layout: post
title: Reverse a string
---

## Problem 
Given a string how would you implement a reverse function for it.

## Example
Hello World => dlroW olleH

## Algorithm
1. To do in place, use 2 pointers.
2. One goes left to right, and the other right to left. 
3. Swap these values and iterate through the array.

## Code
{% highlight cpp %}

// returns 1 when string is reversed successfully, else returns invalid rcode
int reverseString(std::string& s, int n) {
	// Validate string s, check for NULL string, return invalid rcode
	
	// Iterate through string and reverse
	for(int i = 0, j = n-1; i<j; i++, j--){
		swap(s[i],s[j]);
	}
	return 1; // all is good
}

void swap(char *a, char *b){
	// Validate
	char *temp;
	strcpy(temp, a, 1);
	strcpy(a, b, 1);
	strcpy(b, temp, 1);
	return;
}

void main(){
	std::string s1 = "Hello";
	std::string s1Reverse = "olleH";
	
	int rcode = reverseString(s1, s1.length());
	assert(compare(s1Reverse, s1) == 0);
}

{% enghighlight %}

## Time complexity
O(n), since we iterate the array only once.