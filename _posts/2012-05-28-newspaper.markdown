---
layout: post
title: Newspaper
categories: arrays uva cp
---

## Problem
News agency pays money for articles according to some rules. Each character has its own value (some characters may have value equals to zero). Author gets his payment as a sum of all character's values in the article. You have to determine the amount of money that news agency must pay to an author.

## Example 

Input

a 3
W 10
A 100
, 10
k 7
. 3
I 13
7
ACM International Collegiate Programming Contest (abbreviated
as ACM-ICPC or just ICPC) is an annual multi-tiered competition
among the universities of the world. The ICPC challenges students
to set ever higher standards of excellence for themselves
through competition that rewards team work, problem analysis,
and rapid software development.
From Wikipedia.

Output

$3.74

## Algorithm
- Use an array of size 256.
- Use the ascii values of given characters as index for this array
- Store the respective cost for available characters, and initialize the rest to 0
- Now parse the given paragraph, and count the total cost using the array as reference
- Divide the total cost by 100 and report in specified format

## Code
{% highlight cpp %}

int computeCost(std::string newspaper, int costArray[]){
	// validate
	
	int cost = 0;
	
	// parse newspaper and compute cost
	for(int i=0; i < newspaper.size(); i++) {
		cost += costAarray[newspaper[i]];
	}
	
	return cost;
}

{% endhighlight %}

## Time complexity
O(n)