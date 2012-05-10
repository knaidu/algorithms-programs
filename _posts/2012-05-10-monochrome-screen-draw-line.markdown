---
layout: post
title: Draw horizontal line on a monochrome screen
categories: bits hard careercup
---

## Problem
Given an single dimensional array, which represents a monochrome screen. Implement a drawLine function, that draws a horizontal line given (x1,y) and (x2,y) co-ordinates.

## Algorithm
- For the starting byte, use a mask ad set left x bits
- For the ending byte, use a mask and set right x bits
- For all other bytes between start and end, set full bytes to 1.

## Code
{% highlight cpp %}

void drawLine(int a[], int x1, int x2, int y, int width) {
	int row = width/8 * y;
	int firstFullByte = row + x /8 + 1;
}

{% endhighlight %}