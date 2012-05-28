---
layout: post
title: Check if a string is a permutation of another OR Anagrams
categories: strings ctci
---


## Problem
Given 2 strings, check if 1 string is a permutation of another

## Example
aabccd, abcdab are permutations of each other

aabbccdd, abcdefgh are not permutations of each other

## Algorithm
1. Sort both the strings and compare if they are equal. Time complexity O(nlogn).
2. Use a hash table and count the number of chars seen so far, compare this has with the second string, and determine if they are a permutation or not. Time complexity O(n). (Better solution)

## Code
{% highlight cpp %}

int checkStringPermutation(std::string s1, std::string s2){
	
	// Validate s1, s2, check for NULL, return invalid rcode
	
	if(s1.length() != s2.length()) return 0;
	
	std::map<int,int> hash;
	
	// Parse through s1, and count number of chars
	for(int i=0; i<s1.length(); i++) {
		hash[s1[i]]+= 1;		
	}
	
	// Parse through second string and compare
	for(int i=0; i< s2.length(); i++) {
		if(hash[s2[i]] >= 1) hash[s2[i]]-=1;
		else return 0;
	}
	
	return 1; 
}

void main(){
	std::string s1 = aabc;
	std::string s2 = baca;
	std:;string s3 = abcd;
	
	int rcode = checkStringPermutation(s1, s2);
	assert(rcode == 1);
	
	rcode = checkStringPermutation(s1, s3);
	assert(rcode == 0);
}

{% endhighlight %}