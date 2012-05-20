---
layout: post
title: Make change using 25, 10, 5, 1 cents
categories: ctci recursion dp hard
---

## Problem
Given 25, 10, 5, 1 cents, write a program to find all possible ways to make change for value n.

## Algorithm
- Lets say n is 100
- We can makeChange for 100 using 0 quarters
- We can make change for 100 using 1 quarter or 75 using 0 quarters
- We can make change for 100 using 2 quarters or 50 using 0 quarters and so on.

- Similarly, make change for 100 using 0 quarters and 0 dimes
- make change for 90 using 0 quarters and 1 dime, and so on.

## Code
{% highlight cpp %}

int makeChange() {
	// Validate and bulletproof it
	// Figure out the next denomination
	// For current denomination find all combinations
	int ways = 0;
	for(i=0; i*denom < n; i++) 
	{
		ways+=makeChange(n-(i*denom), nextDenom);
	}
}

{% endhighlight %}

