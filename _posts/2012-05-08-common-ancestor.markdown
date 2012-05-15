---
layout: post
title: Find common ancestor in a tree, without links to parents
categories: trees hard recursion ctci
---

## Problem
Design and algorithm to find the first common ancestor of two nodes in a binary tree. Avoid storing additional nodes in a data structure. This is not necessarily a binary search tree.

## Algorithm
- Recurse through the entire tree using find ancestor function
- Returns p, if root's subtree includes p and not q
- Returns q, if root's subtree includes q and not p
- Returns NULL, if root's subtree doesn't include p or q
- Returns root if it includes both p and q

## Code

## Time complexity
O(n)