---
layout: post
title:  Find beginning of loop in a linked list
categories: linked-list careercup tricky
---

## Problem
Given a linked list which has a loop, how would you find beginning of loop in the linked list.

## Example
- Input: 1-2-3-4-5-6-3
- Output: 3 is the beginning of loop

## Algorithm
- Use fast pointer and slow pointer
- The point of collision is important
- From this point, move the fast pointer back to the head
- And move both the pointers by 1 step
- The new point of collision is the beginning of the loop

## Code
{% highlight cpp %}

int findBeginningOfLoop(LinkedListNode head, LinkedListNode& beginning) {
	// Validate
	if(head == NULL || head.next() == NULL || head.next.next() == NULL) return 0;
	
	LinkedListNode fast, slow = head;
	
	// Find loop, first point of collision
	// Fast moves 2 steps while slow moves 1 step at a time
	while(fast != slow || fast == NULL || slow == NULL) {
		fast = fast.next().next();
		slow = slow.next();
	}
	
	if(fast == NULL || slow == NULL) return 0;
	
	// Move fast back to head, and find second point of collision
	// This time fast and slow both move 1 step at a time
	fast = head; 
	while(fast != slow) {
		fast = fast.next();
		slow = slow.next();
	}
	
	// Second point of collision is the beginning of the linked list
	beginning = slow;
	return 1;
}

{% endhighlight %}

## Time complexity
O(n)