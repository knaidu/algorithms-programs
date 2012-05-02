---
layout: post
title: Implement 3 stacks, using a single array
categories: arrays stacks careercup
---

## Problem
Given an array, how would you implement 3 stacks?

## Algorithm
We have 2 options
- Partition the array into 3 portions, and maintain 3 top pointers for each array and index them as required
- Logically split the array into 3 portions, using modulo operator decide where the next element should be placed.

## Code
{% highlight cpp %}

class Stack {
	int a[MAX_SIZE];
	int array_num;
	int top_array[NUM_STACK];
	public:
		int pop(int array_num);
		int push(int value, int array_num);
}

int Stack::pop(int array_num){
	int top = top_array[array_num];
	int value = a[top];
	top -= NUM_STACK;
	if(top < 0) top = -1; // indicating stack is empty
	return value;
}

int Stack::push(int value, int array_num){
	int top = top_array[array_num];
	top += NUM_STACK;
	if(top > MAX_SIZE) return -1; stack is full;
	a[top] = value;
	top_array[array_num] = top;
	return 1;
}

{% endhighlight %}

## Time complexity 
- Push O(1)
- Pop O(1)