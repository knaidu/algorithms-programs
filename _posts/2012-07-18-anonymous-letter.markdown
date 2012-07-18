---
layout: post
title: Anonymous letter
categories: afi hash strings
---

## Problem
Write a method L that takes 2 documents: a word L and a magazine M.
Your method is to return true if L can be written using M and false otherwise.

## Algorithm

- Use a hash table to store information about M

- Parse M and increment value for every ascii char in M

- Now parse L and decrement value for every ascii char in L

- If we hit a 0, return false else return true

## Code 
{% highlight cpp %}

/*
 * anonymousLetter.cpp
 *
 *  Created on: Jul 18, 2012
 *      Author: karthiknaidudj
 *
 *  Write a method L that takes 2 documents: a word L and a magazine M.
 *  Your method is to return true if L can be written using M and false otherwise.
 */

#include <iostream>

int analyzeWord(std::string& l, std::string& m) {
	// Parse M and build a hash
	// Assuming all letters are ASCII build this hash using a 256 bit vector or array
	const int hashSize = 256;
	int hash[hashSize];

	// Initialize
	for(int i=0; i<hashSize; i++){
		hash[i] = 0;
	}

	// Parse M
	for(int i=0; i<m.length(); i++) {
		char c = m[i];
		hash[c] += 1;
	}

	// Parse L and validate
	for(int i=0; i<l.length(); i++){
		char c = l[i];
		if(hash[c] >= 1) hash[c] -= 1;
		else return false;
	}

	return true;
}

int main(){
	std::string l;
	std::string m;
	std::cout << "Enter word L and magazine M" << std::endl;
	std::cin >> l;
	std::cin >> m;
	if(analyzeWord(l, m))
		std::cout << l << " can be written using " << m << std::endl;
	else
		std::cout << l << " can NOT be written using " << m << std::endl;
}

{% endhighlight %}

## Time complexity

- O(n) to parse M and create a hash

- O(m) to parse L and determine if its possible to write L using M

- Total time complexity O(n+m) = O(n)
