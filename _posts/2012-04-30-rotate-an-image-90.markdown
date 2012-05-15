---
layout: post
title: Rotate an image by 90 degrees
categories: arrays matrix ctci
---

## Problem

Given an image represented by a N X N matrix, rotate it by 90 degrees. Do this inplace without using an additional matrix.

## Example

Input
{% highlight cpp %}
   123      741
   456  ==> 852
   789      963
{% endhighlight %}

## Algorithm

1. Rotating by 90 degrees is same as mirroring the matrix along the vertical axis. 

2. Then mirroring it along the right diagonal (minor axis).

3. Swap elements along row, then swap top left half of matrix.

## Code

{% highlight cpp %}

// returns 1 when successful, else returns invalid rcode
int rotateMatrix90(int a[][], int n){
	// validate n, and return invalid rcode
	
	// Mirror along vertical axis
	for (int i=0; i<n; i++){
		for(int j=0; j<n/2; j++) { // traverse only first half of each row
			swap(a[i][j], a[i][n-j]);
		}
	}
	
	// Mirror along right doagonal (minor axis)
	for (int i=0; i<n; i++){
		for(int j=0; j<n-i-1; j++) { // traverse only the top lefth half of matrix
			swap(a[i][j], a[n-j][n-i]);
		}
	}
	
	return 1;
}

void main(){
	// test rotateMatrix90
}

{% endhighlight %}

## Time complexity

O(n^2), since we visit each element twice while swapping.