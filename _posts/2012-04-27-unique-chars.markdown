---
layout: post
title: Determine if a string has all unique characters
---

## Problem
Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

## Example
Halo - all chars are unique
Hello - all chars are not unique

## Algorithm
1. While parsing the string need to keep track of elements already seen, use a map or just a bit vector of size 256. Time complexity O(n)
2. Sort the chars in the string, and then parse string and compare adjacent chars for duplicates. Time complexity O(nlogn + n) = O(nlogn)
3. If no additional memory should be used, compare each char with every other char and check for duplicates. Time complexity O(n^2).

## Code
{% highlight cpp %}

#include <bitset>
	
// returns 1 if it has unique chars, else returns 0.
int hasUniqueChars(std::string s){
	const int MAX_SIZE = 256;
	bitset<MAX_SIZE> hash;
	
	// Validate s for NULL string and return invalid rcode
	
	// Find duplicates
	for(int i=0; i<s.length(); i++){
		if(hash[s[i]] == 1) {
			std::cout << "All chars not unique" << std::end;
			return 0; // not UNIQUE
		}
		else hash[s[i]] = 1;
	}
	
	std::cout << "All chars are unique" << std:;endl;
	// no duplicates found in s
	return 1;
}

void main() {
	std::string s1 = "Halo";
	std::string s1 = "Hello";
	
	int rcode = hasUniqueChars(s1);
	assert(rcode == 1);
	
	rcode = hasUniqueChars(s2);
	assert(rcode == 0);
}

{% endhighlight %}