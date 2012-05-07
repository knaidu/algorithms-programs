---
layout: post
title: Check if tree is a BST
categories: trees recursion careercup
---

## Problem

Given a tree, verify if its a binary search tree. A BST has the property that left child is less than parent and right child is greater than parent.

## Algorithm

- To verify its a binary tree, compare current element with global MIN and MAX
- recurse for left node and right node
- if at any point current node < MIN or > MAX return FALSE;

## Code 
{% highlight cpp %}

bool isBst(TreeNode n, int min, int max){
	if(n == NULL) return;
	if(n.data < MIN || n.data > MAX) return false;
	if(!isBst(n.left(), MIN, n.data) || !isBst(n.right(), n.data, MAX))
		return false;
	return true;
}

{% endhighlight %}

## Time complexity
O(n) since we must visit all nodes to prove its a BST