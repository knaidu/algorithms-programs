---
layout: post
title: Check if linked list is a palindrome
---

## Problem
Write a function to check if given linked list is a palindrome

## Example

Input: 1-2-3-4-4-3-2-1

Output: TRUE

## Algorithm
1. Create another linked list, which is reverse of given linked list, now compare the two lists, if they are equal then its a palindrome. [Multiple traversals]
2. Compare reversed first half of linked list, with the second half. This will tell us if its a palindrome. Use a stack for reversed first half of the list. [Single traversal using extra space]

## Code
{% highlight cpp %}
int isPalindrome(LinkedListNode head){
	// Validate
	if(head == NULL) return;
	
	// only 1 element in list
	if(head.next() == NULL) return 1; 
	
	// only 2 elements in list
	if(head.data() == head.next.data()) return 1;
	else return 0;
	
	// Find the center of the list, using fast and slow pointer
	stl::stack<int> stackList;
	LinkedListNode fast, slow = head;
	while(fast!= NULL || fast.next() != NULL) {
		stackList.push(slow.data());
		fast = fast.next().next();
		slow = slow.next();
	}
	
	// Now compare stack elements with second half of list
	slow = slow.next();
	while(slow != NULL) {
		if(slow.data() == stackList.pop())
			slow = slow.next();
		else return 0;
	}
	return 1;
}

{% endhighlight %}