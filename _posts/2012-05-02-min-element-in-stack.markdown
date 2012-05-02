---
layout: post
title: Find min element in stack in O(1)
categories: stacks careercup
---

## Problem
In addition to push, pop, implement a min function that returns the minimum element in stack. All three operations must work in O(1).

## Algorithm
- Use an additional stack that keeps track of min element
- For a new push operation, compare the elements, if min has changed then push the new min onto the min-stack, else do nothing.
- For a pop operation, compare the elements, if the min has changed, pop the top element from top of min-stack, so that the new top reflects the current minimum element
- This way min(), push() and pop() all operate in O(1).

## Code
{% highlight cpp %}

class StackModified {
	std::stack<int> s;
	std::stack<int> minStack;
	public:
	int pop();
	int push(int);
	int min();
};

int StackModified::pop(){
	int value = s.pop();
	if(value == minStack.peek()){ // poped value is the current minimum
		minStack.pop();
	}
	return value;
}

int StackModified::push(int value){
	int min = minStack.peek();
	if (minStack.isEmpty()) min = LARGE_MAX_VALUE;
	if(value < min) {
		minStack.push(value);
	}
	s.push(value);
	return 1;
}

int StackMoified::min(){
	return minStack.pop();
}

{% endhighlight %}

## Complexity
- Space: using O(n) space
- Time: O(1) for push, pop and min operation.