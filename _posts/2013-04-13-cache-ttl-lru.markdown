---
layout: post
title: Design a Cache 
categories: linkedlists
---

## Problem

Design a cache with custom eviction policy (TTL followed by LRU)

## Algorithm

1. Use a hashmap for lookup
2. Hash map node would contain key, value and ptrs to TTL and LRU linked lists
3. In the get function, read value from hashmap and then move corresponding node to head of LRU list
4. For set, if space exists then insert node and insert them in TTL and LRU list
5. If cache is full, check last node of TTL list, if timestamp - current time is > TTL then remove that node and insert new node into list, and also remove this node from LRU list and insert node at the head of LRU list.


## Code    
{% highlight cpp %}

class Node {
	Node next;
	Node prev;
	int timestamp;
}

class listNode {
	Node ttlPtr;
	Node lruPtr;
	int value;
}

class Cache {
	private:
		unordered_map<int, listNode> map;
		List<Node> ttl;
		List<Node> LRU;
		const int ttl = 100;

	public:
		int get(int key);
		void set(int key, value);
}

int Cache::get(int key) {
	unordered_map<int, int>::iterator iter;
	iter = map.find(key);
	if(iter == map.end())
		return FALSE;
	else {
		moveToFront(iter->second.lruPtr);
		return iter->second.value();
	}
}

void Cache::set(int key, int value) {
	
	if(map.size() != MAX) {
		map.insert(mape_pair<key, value>);
		return;
	}

	// Evict based on ttl
	Node t = ttl.last();
	if(t.timestamp - time.current() > 100)
		ttl.remove(list.last());
	// Evict based on LRU
	else {
		lru.remove(lru.last());
	}

}

{% endhighlight %}

## Time complexity

O(n^2)

For every element in the array we compare against every other element, we have 2 nested for loops. 

