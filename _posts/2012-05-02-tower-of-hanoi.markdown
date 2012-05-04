---
layout: post
title: Tower of Hanoi
categories: stacks recursion careercup
---

## Problem

Implement tower of Hanioi

## Algorithm

When n = 1,

- For the trivial case, we directly move disk from 1 to 3

When n = 2, 

- use buffer, move disk from 1 to 2, 
- move disk from 1 to 3, 2 to 3


When n = 3, 

- move top 2 disks from 1 to 2, 
- using 3 as buffer, we know how to do this from the case n=2 above, 
- now move disk from 1 to 3, 
- then move remaining disks from 2 to 3 using 1 as buffer.

## Code
{% highlight cpp %}
class TowerOfHanoi {
	std::stack<int> s1, s2, s3;
	public:
	moveDisks(int n, Stacck source, Stack destination, Stack buffer);
}


void TowerOfHanoi::moveDisks(int n, Stack source, Stack destination, Stack buffer) {
	if(n < 0) return;
	if(n == 1) moveTop(source, destination);
	
	moveDisks(n-1, source, buffer, destination);
	moveTop(source, destination);
	moveDisks(n-1, buffer, destination, source);
}

void TowerOfHanoi::moveTop(Stack source, Stack destination){
	destination.push(source.pop());
}

{% endhighlight %}

## Time complexity
Move n-1 disks form 1 to 2 - T(n-1)
Move 1 disk from 1 to 3 - 1
Move n-1 disks from 2 to 3 - T(n-1)
T(n) = 2T(n-1)+1
On solving we get O(2^n)