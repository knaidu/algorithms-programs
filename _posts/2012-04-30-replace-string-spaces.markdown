---
layout: post
title: Replace all spaces in a string with %20
categories: strings ctci
---

## Problem

Replace all spaces in a string with %20

## Example

Input: "Hello, How are you doing?"

Output: "Hello,%20How%20are%20you%20doing?" 

## Algorithm
1. Need to parse the string 2 times
2. First pass: count number of spaces, to determine new string length
3. Second pass: parse string from right to left, for every space insert %20 in the new string, if not a space copy the character as is.

OR 

1. Use string class, parse left to right, concat %20 when you encounter a " " in given string.
2. Return the result string

## Code
{% highlight cpp %}

// returns 1 when string replace is successful, invalid rcode otherwise
int replaceSpaces(std::string& s, std::string& r) {
	// Validate s, NULL, return invalid code
	
	// Replace
	for(int i=0; i<s.length(); i++){
		if(compare(s[i], " ") == 0) {
			r+="%20";
		}
		else r+=s[i];
	}
	return 1;
}

void main(){
	std::string s = "Hello World";
	std::string sResult = "Hello%20World";
	std::string r;
	
	replaceSpaces(s, r);
	assert(compare(r, sResult) == 0);
}

{% endhighlight %}

## Time complexity

O(n), since we are parsing the string just once.