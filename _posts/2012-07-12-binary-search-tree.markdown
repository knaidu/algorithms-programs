---
layout: post
title: Given a binary search tree, write iterative and recursive search methods
categories: afi trees recusrion
---

## Problem
Given a binary search tree, write iterative and recursive search methods

## Algorithm

- Compare key k with root

- If its less then k must be on the left subtree, else on the right subtree

- Recurse/Loop

## Code
{% highlight cpp %}

/*
 * binarySearchTree.cpp
 *
 *  Created on: Jul 27, 2012
 *      Author: karthiknaidudj
 *
 *  Given a binary search tree, find element k
 */

class Node {
	int data;
	Node& left;
	Node& right;
};

// Recursive function
Node& findElement(Node& root, int k) {
	if(root == null) return null;
	if(root.data == k) return root;
	if(k < root.data) return findElement(root.left, k);
	else if(k > root.data) return findElement(root.right, k);
}

// Iterative function
Node& findElement(Node& root, int k){
	if(root == null) return null;
	while(root.data != k && root != null) {
		if(k < root.data) root = root.left;
		else if(k > root.data) root = root.right;
	}
	return root;
}

{% endhighlight%}

## Time complexity
O(logn) - For a balanced BST
O(n) - For a a skewed BST