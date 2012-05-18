---
layout: post
title: Implement a paint fill function
categories: recursion ctci dp
---

## Problem
Given a screen, a point and a color, implement paint fill function

## Algorithm
- Bleed out or fan out the new color from given point outwards 
- Do this till we find a different color

## Code
{% highlight cpp %}

bool paintFill(Color screen[][], int x, int y, int oldColor, int newColor) {
	// Validate point
	if(x < screen[0].length() || y < screen.length()) return false;
	
	if(screen[y][x] == oldColor) { // Paint
		screen[y][x] = newColor;
		paintFill(screen, x-1, y, oldColor, newColor);
		paintFill(screen, x+1, y, oldColor, newColor);							 		            
		paintFill(screen, x, y-1, oldColor, newColor);
		paintFill(screen, x, y+1, oldColor, newColor);
	}
	return true;
}

{% endhighlight %}

## Note
screen[y][x] is used in graphical applications because the matrix representation of x = rows, but in graphical situations x is the column number