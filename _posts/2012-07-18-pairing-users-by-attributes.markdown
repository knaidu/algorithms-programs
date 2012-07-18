---
layout: post
title: Pairing users by attributes
categories: afi hash strings
---

## Problem
How would you implement a matching process efficiently? Given a sequence of users 
where each user has a unique key and a set of attributes. What if you had to implement
a partial match?

## Algorithm

- First determine the hash mechanism to compare attributes of each user

- One option is to make a bit vector of each arrtibute then use its integer value to 
compare with another usere's attributes (bad for large number of attributes)

- Second option is to sort each attribute strings and concatenate them and compare with 
another user's attributes

- To implement partial match, we need a attribute comparison mechanism, in the 
bit vector approach we can have a count of number of attributes that match, or 
break ties using weights for each attribute.

## Time complexity

- O(n) to parse the users, O(1) to pair based on attributes per user

