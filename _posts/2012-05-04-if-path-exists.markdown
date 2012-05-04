---
layout: post
title: Find if path exists form one node to another
categories: graphs trees careercup
---

## Problem
Given the start node and end node in a graph, find it a path exists between them.

## Algorithm
- Use BFS or DFS
- During traversal, if we find node return SUCCESS.

## Code
{% highlight cpp %}

int findPath(Graph g, Node start, Node end) {
	std::queue<Node> q;
		
	// Initialize state of all nodes in graph
	Node i;
	while(i = g.getNode())	i.state = unvisited;
		
	start.state = visiting;
	q.enqueue(start);
	while(!q.isEmpty()){
		Node u = q.pop();
		if(u!= NULL) {
			if(u == end) return SUCCESS;
			else { // enqueue u's children
				for(Node i = u.childrenList.begin(); i != u.childrenList.end(); i=u.childrenList.next()) {
					i.state = visiting;
					enqueue(i);
				}
			}			
		}
		u.state = visited;
	}
	return FAILURE;
}

{% endhighlight %}

## Time complexity
O(E log V), E = edges, V = vertices