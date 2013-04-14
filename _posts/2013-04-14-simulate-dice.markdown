---
layout: post
title: Simulate a dice using a 2 sided coin
categories: probability trees
---

## Problem

Given a 2 sided fair coin, simulate a 6 sided dice

## Algorithm

1. Use this coin and perform the flip 3 times
2. At every flip based on H/T branch left or right in the hypothetical tree
3. That will result in 8 options on each leaf
4. Use the first 6 results and discard the last 2 and repeat the experiment in those cases

## Code    
{% highlight cpp %}

int simulateDice() {
	// Roll dice 3 times
	string result += rand() % 2;
	result += rand() % 2;
	result += rand() % 2;

	if(result.compare("000") == 0) {
		return 1;
	}
	else if(result.compare("001") == 0) {
		return 2;
	}
	else if(result.compare("010") == 0) {
		return 3;
	}
	else if(result.compare("011") == 0) {
		return 4;
	}
	else if(result.compare("100") == 0) {
		return 5;
	}
	else if(result.compare("101") == 0) {
		return 6;
	}
	// For any other results repeat the experiment
	else return simulateDice();
}

{% endhighlight %}

## Time complexity

O(log n) for every result, where n is the total number of outcomes, 8 in this case.