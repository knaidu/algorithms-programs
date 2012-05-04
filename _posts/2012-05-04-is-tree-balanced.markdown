---
layout: post
title: Check if tree is balanced
categories: trees graphs recursion careercup
---

## Problem
Given root node to a tree, verify if the tree is balanced. A tree is balanced if the difference in height of left subtree and right subtree is not greater than 1.

## Algorithm

- Calculate height of left subtree
- Calculate height of right subtree
- Check their difference
- When calculating height, we can optimize it to also check if its balanced

## Code

{% highlight cpp %}

// returns height of tree, -1 if its not balanced
int checkHeight(Node root){
	if(root == NULL) return 0;
	if(checkHeight(root.left()) == -1) return -1;
	if(checkHeight(root.right()) == -1) return -1;
	
	if(abs(checkHeight(root.left) - checkHeight(root.right())) > 1) 
		return -1;
	else 
	    return max(checkHeight(root.left()), checkHeight(root.right())) + 1;
}

int isBalanced(Node root){
	if(checkHeight(root) == -1) return NOT_BALANCED;
	else return BALANCED;
}

{% endhighlight %}

## Time complexity
O(n)