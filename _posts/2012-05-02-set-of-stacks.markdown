---
layout: post
title: Set of stacks, like in real world
categories: stacks ctci
---

## Problem

Implement a set of stacks, like in the real world when one stack gets too high, start another stack. Posh and pop must work on the current stack.

## Algorithm

- Use an array of stacks
- When current array reaches its capacity, start a new stack
- When pushing or popping, get current stack, then push/pop.

## Code

{% highlight cpp %}

class SetOfStacks {
	std::vector<Stack> setOfStacks;
	int pop();
	int push();
	Stack getCurrentStack();
}

int SetOfStacks::pop(){
	Stack s = getCurrentStack();
	int value = s.pop();
	if(s.size == 0) // stack has become empty
	setOfStacks.remove(s);
	return value;
}

int SetOfStacks::push(int value){
	Stack s = getCurrentStack();
	if(s.size() == MAX_CAPACITY || s == NULL) {
		s = new Stack();
		s.push(value);
		setOfStacks.push_back(s);
	}
	return 1;
}

Stack SetofStacks::getCurrentStack(){
	if(setOfStacks.size() == 0) return NULL;
	else setOfStacks[setOfStacks.size()-1]; // return last stack
}

{% endhighlight %}

