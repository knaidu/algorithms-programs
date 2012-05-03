---
layout: post
title: Sort a stack without using an array
categories: stacks sorting arrays careercup
---

## Program

Given a stack, sort it in ascending order. You may use another stack to hold the elements but not another array.

## Algorithm

- Pop elements from s1 onto s2,
- When inserting into s2, insert in sorted order, to do this -
- Pop from s1, store in temp variable
- Pop as many elements from s2 and push into s1
- Then push value from temp variable into s2
- Then push back the elements from s1 that were inserted during this move

## Code

{% highlight cpp %}

class Stack {
	int sort();
}

// sorts the stack it was called upon
int Stack::sort() {
	int temp;
	Stack s2;
	Stack s1 = this;
	int count = 0;
	
	while (!s1.isEmpty()) {
		temp = s1.pop();
		while(s2.peek() > temp) {
			int value = s2.pop();
			if(value != -1) {
				count += 1;
				s1.push(value);
			}
			else break;
		}
	
		// Now temp element can be inserted in its right position
		s2.push(temp);
	
		// push elements that were put in s1, back into s2
		while(count > 0){
			s2.push(s1.pop())
			count -= 1;
		}
	}
	
	// push elements form s2 to s1 and return
	while(!s2.isEmpty()) {
		s1.push(s2.pop())
	}
	return 1;
}

{% endhighlight %}

## Time complexity

O(n^2); since for every element in s1, we potentially visit all elements in s2; a.k.a insertion sort !