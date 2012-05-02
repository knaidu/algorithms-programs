---
layout: post
title: Find the kth to last element of a linked list
categories: linked-list careercup
---

## Problem
Give an algorithm to find the kth to last element in a linked list

## Example

Input: 1-2-3-4-5-6-7, k = 3

Output: 5

## Algorithm
1. Use the stringing technique.
2. Use 2 pointers, increment the first by k elements, while the second stays at head.
3. Once first pointer has reached k, increment both the pointers 1 node at a time, until first pointer reached end of linked list.
4. Now, second pointer is k elements away form the end, this is the required result.

## Code
{% highlight cpp %}

int findKthLastElement(LinkedListNode head, int k, LinkedListNode & kth){
	// Validate
	if(head == NULL) return 0;
	
	// two pointers, point to the head
	LinkedListNode& first, second = head;
	
	// increment first k times
	for(int i=0; i<k; i++){
		first = first.next();
	}
	
	while(first != NULL) {
		first = first.next();
		second = second.next();
	}
	
	kth = second;
	reutrn 1;
}

{% endhighlight %}

## Time complexity
O(n), we're traversing the array just once, each element is visited 1 time.
