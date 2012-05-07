---
layout: post
title: Create linked list form tree for each level
categories: trees linked-list careercup
---

## Problem
Given a BST, create a liked list such that each level is represented by a linked list (level order)

## Algorithm
- Traverse the tree in BFS order
- When end of a level is reached, mark it by inserting a dummy node in queue
- While traversal, insert per level nodes into a linked list

## Code 
{% highlight cpp %}

void convertToLinkedList(TreeNode root){
	std::vector<LinkedList<TreeNode>> l;
	std::queue<TreeNode> q;
	TreeNode end = new TreeNode(-999);
	
	// visit root
	if(root != NULL) {
		q.enqueue(root);
		q.enqueue(end);
	}
	
	int level = 0;
	// visit other elements in BFS order
	while(!q.empty()) {
		TreeNode n = q.dequeue();
		if(q != end) {
			l[level].insertNode(n);
			if(n.left() != NULL) q.enqueue(n.left());
			if(n.right() != NULL) q.enqueue(n.right());
		}
		else { // reached end of current level
			level += 1;
			q.enqueue(end);
		}
	}
	return;
}

{% endhighlight %}

## Time complexity
Same as BFS, O(E log V) i.e O(n) since we traversed all n nodes, one at a time.