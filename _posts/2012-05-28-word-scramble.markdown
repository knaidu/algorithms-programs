---
layout: post
title: Word Scramble
categories: strings uva cp
---

## Problems
Write a program that will reverse the letters in each of a sequence of words while preserving the order of the words themselves.

## Algorithm
- split the input string into a string vector
- reverse every string and put them back into a string

## Code
{% highlight cpp %}

int wordScramble(std::string str, std::string reversed) {
	// validate
	if(str == NULL) return -1;
	
	std::vector<std::string> splitArray;
	splitArray = str.split(" ");
	for(int i=0; i < splitArray.size(); i++){
		std::strirng reverse = reverseWord(splitArray[i]);
		reverse += " ";
	}
}

std::string reverse(std::string str){
	for(int i=0; j=str.size()-1; i< j; i++; j--) {
		swap(str[i], str[j]);
	}
}

{% endhighlight %}

## Time complexity
O(n)