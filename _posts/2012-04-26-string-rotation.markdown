---
layout: post
title: Check for string rotation, given isSubstring()
categories: strings tricky careercup
---

## Problem
Assume you have a method isSubstring which checks if one word is a substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring()

## Example
“waterbottle” is a rotation of “erbottlewat”

## Algorithm
1. The trick here is to figure out why isSubstring() is given.
2. Concatenate s2 + s2. 
3. Now search for s1 using isSubstring()
4. If we find the string s1, then it is a rotation, else it isn't.
Example: erbottlewat + erbottlewat = erbottle'waterbottle'wat

## Code
{% highlight cpp %}

// returns 1 if is substring, else returns 0
int isSubstring(pattern, string){
	// Given..
}

// returns 1 if it is a rotation, else return 0
int isRotation(std::string s1, std::string s2) {
	// Validation check s1.len(), s2.len()
	
	// Concatenate s2
	std::string s2concat;
	s2concat = concatenate(s2, s2);
	
	// Check if s2concat has s1 as a substring
	if(isSubstring(s1, s2concat)) {
		std::cout << s2 << " is a rotation of " << s1 << std::endl;
		return 1;
	}
	else {
		std::cout << s2 << " is NOT a rotation of " << s1 << std::endl;
		return 0;
	}
}

void main(){
	std::string s1 = "waterbottle";
	std::string s2 = "erbottlewat";
	std::string s3 = "waterbot";

	int rcode = isRotation(s1, s2);
	assert(rcode == 1);
	
	rcode = isRotation(s1, s3);
	asserth(rcode == 0);
}

{% endhighlight %}

## Time complexity
O(1)

Only 1 call to isSubstring().