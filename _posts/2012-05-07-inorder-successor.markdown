---
layout: post
title: Find in-order successor in a BST
categories: trees ctci
---

## Problem
Given a BST and a node, how would you find its in-order successor?

## Algorithm

Cases to handle

- if node is root, and has right child, then in-order successor is left most child in right subtree
- if node has parent, and node is left child of parent, then parent is its inorder successor
- if node is right child, then go up the tree, until node is either left child or node is root

## Code
{% highlight cpp %}

void findInorderSuccessor(TreeNode n){
	if(n == NULL) return NULL;
	if(n.parent() == NULL) {
		findLeftMostChild(n.right());
	}
	while (n == n.parent().right() && n != NULL){
		n = n.parent();
	}
	return n; // n could be null if it has no inorder sucessor, else we return parent
}

{% endhighlight %}

## Time complexity
O(logn) since we might tracel the entire length of the tree in the worst case