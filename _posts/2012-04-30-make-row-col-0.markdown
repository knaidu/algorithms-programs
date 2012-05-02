---
layout: post
title: Make entire row and column 0, if an element in matrix is 0.
categories: arrays matrix careercup
---

## Problem

Given a NXN matrix, if an element is 0, make the entire row and column 0.

## Example

{% highlight ruby %}

123     103
456 ==> 406
709     000

{% endhighlight %}

## Algorithm

1. Use an auxiliary row and column array to keep track of which row and which column must be made 0.
2. First pass: Parse through the matrix and set the auxiliary arrays.
3. Second pass: Based on the auxiliary array, make that row and column of matrix 0.

## Code

{% highlight cpp %}

// returns 1 when manipulated successfully, else returns invalid rcode
void makeRowColZero(int a[][], int n){
	// validate n, return invalid code
	
	// auxialiary arrays
	int row[n], column[n];
	
	// initailize auxialiary arrays to 0
	
	// First pass to populate auxialiary array
	for(int i=0; i<n; i++){
		for (j=0; j<n; j++){
			if(0 == a[i][j]) {
				row[i] = 1;
				col[j] = 1;
		}
	}
	
	// Second parse to make row and col 0
	for(int i=0; i<n; i++){
		for(int j=0; j<n; j++){
			if(row[i] == 1 || col[j] == 1)
				a[i][j] = 0;
		}
	}
}

void main(){
	// test makeRowColZero();
}

{% endhighlight %}

## Time complexity

O(n+n), O(n), since we parse the matrix twice. Linear time.