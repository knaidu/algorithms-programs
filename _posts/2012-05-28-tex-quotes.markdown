---
layout: post
title: TEX Quotes
categories: adhoc uva cp strings
---

## Problem
Given a string, replace opening " with `` and closing " with '' and so on.

## Algorithm
- Parse the string, and replace as instructed
- Use a flag to indicate if this is the first quote or subsequent quote

## Code
{% highlight cpp %}

int texQuotes(std::string& str, std::string& result){
	//validate
	if(str == NULL) return -1;
	
	int openingQuote = 1;
	
	for(int i=0; i < str.size(); i++){
		if(comapre(str[i], "\"") {
			if(openingQuote) result.append("``"); // ``
			else result.append("''"); // ''
		}
		else result.append(str[i]);
	}
}

{% endhighlight %}

## Time complexity
O(n)