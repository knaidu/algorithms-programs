---
layout: post
title: Robot tour in grid
categories: recursion dp hard ctci
---

## Problem
Given a N X N grid, imagine a robot starts the tour at 0,0. The robot can only move right and down.

1. How many ways are there for the robot to reach n,n.
2. If certain spots are off limits, how would you find the path.

## Algorithm
- Number of possible paths X + Y = N
- Choose X.
- Paths = (X + Y)! / (X! * Y!)

For the path with spots off limits
- Start from n,n.
- the robot could have come from (x-1, y) or (x, y-1).
- Similarly, it could have reached (x-1,y) from (x-2,y) or from (x,y-1).
- We can build a recursive algorithm for this, use a cache to keep track of spots we've visited before to keep it efficient

## Code
bool pathExists(int x, int y, std::vector<Node>& path, std::map<Node>& cache) {
	Node p;
	p.x = x;
	p.y = y;
	path.add(p);
	
	if(cache.find(p)) return cache[p];
	
	if(x == 0 && y == 0) // we've reached origin
	return true;
	
	if(isFree(x-1, y)) 
		success = pathExists(x-1,y,path,cache);
	if(!success && isFree(x, y-1))
		success = pathExists(x, y-1, path, cache);
	if(!success) // path doesnt exist in both adjascent boxes
		path.remove(p);
		
	cache.add(p, result);
}