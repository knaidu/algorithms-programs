---
layout: post
title: Find pair of integers which sum up to a given value S
categories: afi arrays hash
---

## Problem
Design an efficient algorithm for determining if there exist a pair of indices i,j 
such that A[i]+A[j] = S. Given that array A is sorted

## Algorithm
- Use a hash table, parse the array and store every element's indices
- Now for element x search has for x' in the hash table
- Return sum if found else, 0.

## Code 
{% highlight cpp %}

/*
 * pairSum.cpp
 *
 *  Created on: Jul 17, 2012
 *      Author: karthiknaidudj
 *
 *  Design an efficient algorithm for determining if there exist a pair of indices i,j
 *  such that A[i]+A[j] = S. Given that array A is sorted
 */

#include <iostream>
#include <vector>
#include <algorithm>
#include <tr1/unordered_map>

using namespace std;
using namespace std::tr1;

// Assumes A is sorted
int findPair(int a[], int n, int sum, int& x, int& y) {
	if(n<=0) return -1;
	x = 0;
	y = 0;
	unordered_map<int, int> hash;

	for(int i=0; i<n; i++){
		hash.insert(make_pair<int,int>(a[i], i));
	}
	for(int i=0; i<n ;i++) {
		int elemtnOne = a[i];
		int elementTwo = sum - a[i];
		unordered_map<int, int>::iterator found = hash.find(elementTwo);
		if(found != hash.end()) {
			x = i;
			y = found->second;
		}
	}
	return 1;
}

int main(){
	int a[10];
	int x = 0;
	int y = 0;
	int n = 0;
	int sum = 0;
	cout << "How many elements in array? " << endl;
	cin >> n;
	cout << "Enter elements in array: " << endl;
	for(int i=0; i<n; i++){
		cin >> a[i];
	}
	cout << "Sum:" << endl;
	cin >> sum;
	if(findPair(a, n, sum, x, y))
		cout << "x: " << x << "y: " << y << endl;
}

{% endhighlight %}

## Time complexity
-O(n) to parse the array and O(1) per element to search for x'
- Total time is O(n + n) = O(n)