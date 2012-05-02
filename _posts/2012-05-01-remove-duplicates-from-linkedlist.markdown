---
layout: post
title: Remove duplicates from a linked list
categories: linked-list careercup
---

## Problem
Write code to remove duplicates from a linked list

## Example

Input: 1 - 2 - 5 - 4 - 7 - 2

Output: 1 - 2 - 5 - 4 - 7

## Algorithm
1. Use a hashtable to keep track of elements we've already seen
2. Traverse the linked list and delete current node if its been marked in hashtable


## Code

{% highlight cpp %}

int removeDuplicatesFromList(LinkedListNode head) {
	if (head == NULL) return 0;
	
	bitset<MAX_SIZE> hash;
	for(LinkedList i=head; i!=NULL; i=i.next()){
		if(hash[i.data()]) { // already exists, delete it
			// use the copy trick, 
			// copy next node details into current, 
			// and delete tne next node
			i.data() = i.next().data();
			LinkedListNode temp = i.next();
			i.next() = i.next().next();
			delete(temp);
		}
		else {
			hash[i.data()] = 1;
		}
	}
	return 1;
}

{% endhighlight %}

## Time complexity
O(n), since we traverse the linked list only once, i.e. visit each element of the list 1 time.