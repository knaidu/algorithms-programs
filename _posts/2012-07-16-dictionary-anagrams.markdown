---
layout: post
title: Sort a dictionary such that anagrams appear together
categories: afi strings sorting
---

## Problem
Given a dictionary, sort it such that all anagarams appear together

## Algorithm
- Modify the comparator function for sort
- Check for anagrams by sorting the string and comparing it
- For 2 strings to be compared sort them and return true if they are the same else return false

## Important note
- Take care while implementing the compare functor or comparator.
- It needs to return true for condition (a < b) for int or string. 
- Not true for (a == b).

## Code
{% highlight cpp %}

// Given a dictionary of words sort it such that all the anagrams appear together

#include <iostream>
#include <vector>
#include <string>

struct sortCLass {
	bool operator() (std::string i, std::string j) {
		std::cout << "Comparing: " << i << " and " << j << std::endl;
		std::string tempI = i;
		std::string tempJ = j;
		sort(tempI.begin(), tempI.end());
		sort(tempJ.begin(), tempJ.end());
		return (tempI.compare(tempJ) < 0);
	}
} sortObj;

int main(){
	// Contains all words
	std::vector<std::string> dictionary;
	int n;
	std::string word;
	std::cout << "How many words in dictionary?" << std::endl;
	std::cin >> n;
	std::cout << "Enter words in dictionary" << std::endl;
	for(int i=0; i<n; i++){
		std::cin >> word; 
		dictionary.push_back(word);
	}
	sort(dictionary.begin(), dictionary.end(), sortObj);
	std::cout << "After sorting: " << std::endl;
	for(std::vector<std::string>::iterator i=dictionary.begin(); 
		i<dictionary.end(); i++){
			std::cout << *i << std::endl;
	}
}

{% endhighlight %}

## Time complexity
O(n logn * mlogn) 
nlogn to sort and mlong to sort the individual strings to compare them
