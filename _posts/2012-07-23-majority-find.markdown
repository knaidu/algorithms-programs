---
layout: post
title: Given a stream of integers find the majority element
categories: afi arrays tricky
---

## Problem
Given an input stream of numbers, find the majority element

## Algorithm
- Use a counting technique to find the majority element

- Read the stream of numbers 1 element at a time, for the first element assign it as 
  majority candidate and set count to 1.

- For each element read, if its same as current element - increment count, 
  else decrement count.

- If count reaches 0, then assign that element as majority candidate.

- Assuming the problem statement is true and there is at least 1 majority element, 
  by the time we finish parsing the input stream we should have the majority element.
  
## Code
{% highlight cpp%}

#include <iostream>
using namespace std;

int majorityFind(int a[], int n) {
	int count = 1;
	int majorityCandidate = a[0];
	for(int i=1; i<n; i++) {	
		if(majorityCandidate == a[i]) count ++;
		else if(count != 0) count --;
		else {
			majorityCandidate = a[i];
			count = 1;
		}
	}	
	return w;
}

int main() {
	int a[10];
	int n=0;
	cout << "Enter num of elements " << endl;
	cin >> n;
	cout << "Enter elements :" << endl;
	for(int i=0; i<n; i++) {
		cin >> a[i];
	}
	cout << "Majority element is: " << majorityFind(a, n) << endl;
}

{% endhighlight %}

## Time complexity
O(n) since we do only 1 pass