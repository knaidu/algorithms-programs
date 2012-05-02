---
layout: post
title: Partition a linked list around element x
categories: linked-list careercup
---

## Problem

Given an element x, partition a linked list such that, all elements less than x, occur before x and all elements greater than x, occur after x in the linked list.

## Example

Input: 1-5-9-2-4-6, x = 5

Output: 1-2-4-5-9-6 (not sorted, only partitioned)

## Algorithm

1. Create 2 separate linked lists, left and right then join them.
2. To create left, parse through the list and pull out elements less than x.
3. All other elements go into the right list
4. Delete original list.
5. Now join the 2 lists.
6. This algorithm ensures original order is preserved.

## Code
{% highlight cpp %}

int partitionLinkedList(LinkedListNode& head) {
	// Validate
	if(head == NULL) return 0;
	
	LinkedListNode left,right = NULL;

	// Create left and right lists
	for(LinkedListNode i= head; i!= NULL; i=i.next()){
		if(i.date() < x) {
			left.addToTail(i.data());
		} 
		else {
			right.addToTail(i.data());
		}
	}
	
	// Delete original list
	deleteList(head);
	
	// Join the two lists
	left.addToTail(right);
	
	head = left;
	return 1;
}

void LinkedListNode::addToTail(int x){
	// first traverse to end
	LinkedListNode curr = this;
	while(curr.next() != NULL) curr = curr.next();
	
	// insert new node at the end
	LinkedListNode n = new LinkedListNode();
	n.next() = NULL;
	n.data() = x;
	curr.next() = n;
	return;
}

void LinkedListNode::addToTail(LinkedListNode n){
	if(n == NULL) return;
	
	// first traverse to end
	LinkedListNode curr = this;
	while(curr.next() != NULL) curr = curr.next();
	
	// Insert new list at the end
	this.next() = n;
}

{% endhighlight %}

## Time complexity
O(n), list is traversed only once. Each element is visited exactly 1 time.