---
layout: post
title: Implement a queue, using stack
categories: queues stacks tricky ctci
---

## Problem
Implement a queue using stack

## Algorithm
- Use 2 stacks
- Push operation always pushes element into s1
- pop always pops element from s2
- if s2 is empty then pop all elements from s1 to s2 and then pop

## Code

{% highlight cpp %}

class Queue{
	std::stack<int> s1, s2;
	public:
	int pop();
	int push(int);
}

int Queue::pop(){
	if(!s2.empty()) return s2.pop();
	if(s2.empty()) { // Move elements from s1 to s2
		moveS1toS2();
		return s2.pop();
	}
}

int Queue::push(int value){
	if(s1.full() && s2.empty()) { // move from s1 to s2 (shown above)
		moveS1toS2();
	}
	s1.push();
}

void moveS1toS2(){
	if(s1.empty()) return -1;
	while(!s1.empty()) {
		s2.push(s1.pop());
	}
}

{% endhighlight %}

## Time complexity
Push O(n)
Pop O(n)