---
layout: post
title: The 3n + 1 problem (collatz problem)
categories: adhoc uva cp
---

## Problem
Given a number determine its collatz cycle length. 

## Algorithm
- If n == 1, stop
- If n is odd, n = 3n + 1
- If n is even, n = n/2

## Code
{% highlight cpp %}

// returns collatz length, -1 if input is invalid
int collatzCycleLength(int n){
	// validate
	if(n < 0 || n > 1000000) return -1;
	
	int length = 0;
	
	while(n != 1) {
		if(n % 2 == 0) // even
			n = (3 * n) + 1;
		else // odd
			n = n/2;
		length ++;
	}
}

{% endhighlight %}

## Time complexity
O(n)