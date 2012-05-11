---
layout: post
title: How would you find out if two strings are anagrams or not
categories: strings 
---

## Problem
Write a method to figure out if two strings are anagrams or not

## Algorithm (Using hashing)
0. Compare string length for both strings, if they are not equal then return 0.
1. Parse the 1st string.
2. For every char set hash table value to 1.
3. Now parse the second string
4. For every char check hash table value must be 1, else return 0.
5. If the entire string is parsed without error then return 1.

## Code
{% highlight cpp %}
void isAnagram(std::string str1, std::string str2) {
  if(str1.len() != str2.len()) return 0;
  std::hashMap<cahr*, int> charMap;
  // Parse string 1
  for(int i=0; i< str1.len(); i++) {
    charMap[str1[i]] += 1;
  }
  // Parse string 2
  for(int i=0; i< str2.len(); i++) {
    if(charMap[str1[i]] != 1) return 0;
  }
  return 1; // Success
}
{% endhighlight %}

## Time complexity
O(n), to parse and compare with hash, additional space this algorithm requires is O(n)

## Algorithm (Using sorting)
1. Sort both the strings and compare them
2. If equal they are anagrams
3. Else they are not.

## Code
{% highlight cpp%}

int determineAnagrams(std::string str1, std:;string str2) {
  sort(str1);
  sort(str2);
  if(str1 == str2) return 1;
  else return 0;
}

{% endhighlight %}

## Time complexity
O(nlogn + n), nlogn to sort and n to parse through the list to compare. This algo doesnt require any additional space.