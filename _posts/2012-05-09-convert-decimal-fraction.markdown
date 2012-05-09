---
layout: post
title: Convert a decimal fraction into binary
categories: bits tricky careercup
---

## Problem
Give a decimal fraction, convert it into binary

## Example
0.5 = 0.1

## Algorithm
- Multiply the num by 2,
- if its greater than 1, then append 1 to the result
- else append 0, 
- continue this process until the num becomes 0

## Code
std::string convertToBinary(double num) {
	if(num >1 || num <0) return "ERROR";
	std::string result = "0.";
	
	while(num < 0) {
		if(result.size() > 32) return "ERROR";
		double r = num * 2;
		if(r > 1) {
			result += "1";
			num = r - 1;
		}
		else result+= "0";
	}
	return result;
}