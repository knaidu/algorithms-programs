---
layout: post
title: Find if t2 is a subtree of t1
categories: trees recursion ctci
---

## Problem
Given 2 very large binary trees, t1 and t2 with millions of nodes. Design an algorithm to find if t2 is a subtree of t1.

## Algorithm
First approach

- Get in-order and pre-order traversals of the 2 trees and then use suffix tree to check for substring
- This would take up additional memory, but faster run time of O(n+m)

Second approach

- Use recursion, and determine at each step if t2 is a subtree of t1.
- Lesser memory, but longer run time of O(nm)

## Code
{% highlight cpp %}

bool isSubtree(TreeNode t1, TreeNode t2){
	if(t1 == NULL || t2 == NULL){
		return false;
	}
	if(t1.data == t2.data) 
		if(search(r1, r2)) return true;
	else
		return (subtree(t1.left(), t2) || subtree(t1.right(), t2));
}

bool search(TreeNode t1, TreeNode t2){
	if(t1 == NULL || t2 == NULL) return false;
	if(t1.data != t2.data) return false;
	if(t1.data == t2.data) {
		return (search(t1.left(), t2.left() && search(t1.right(), t2.right()));
	}
}

{% endhighlight %}