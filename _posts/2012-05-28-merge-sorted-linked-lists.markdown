---
layout: post
title: Merge 2 sorted linked lists
categories: linked-list careercup
---

## Problem
Given 2 sorted linked lists merge them into a single linked list

## Algorithm
- Compare the 2 elements from both lists
- Merge them into a single list

## Code
{% highlight cpp %}
void mergeLinkedList(Node head1, Node head2) {
	// Validate
	if(head1 == NULL && head2 == NULL) return;

	// Merge
	while(head1 != NULL || head2 != NULL) {
		if(head1 == NULL) head.append(head2);
		if(head2 == NULL) head.append(head1);
		if(head1.data() <= head2.data()) {
			head.addToTail(head1.data());
			head1  = head1.next();
		}
		else {
			head.addToTail(head2.data());
			head2 = head2.next();
		}
	}
}
{% endhighlight %}

## Time complexity
O(n)