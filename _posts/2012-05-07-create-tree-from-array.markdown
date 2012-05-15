---
layout: post
title: Create a balanced binary tree from a sorted array
categories: trees recursion ctci 
---

## Problem

Given a sorted array, create a balanced binary tree

## Algorithm

- In oder to ensure tree is balanced, we must insert nodes into tree in a specific order
- Traverse the array in binary search order and then insert these elements into tree
- To make this efficient, use recursion.

## Code
{% highlight cpp %}

TreeNode insert(Tree t, array a, int low, int high) {
	if(low < high) return NULL;
	int mid = (low + high) / 2;
	TreeNode n = new TreeNode(a[mid]);
	n.left = insert(t, a, low, mid -1);
	n.right = insert(t, a, mid+1, high);
	return n;
}

{% endhighlight%}

## Time complexity
O(n) to insert elements into the tree.
Would have been O(nlogn) if we would have used insert node for every node in array.