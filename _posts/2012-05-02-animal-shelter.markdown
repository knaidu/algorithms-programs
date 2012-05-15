---
layout: post
title: Design an animal shelter
categories: stacks queues linked-list design ctci
---

## Problem
Design an animal shelter that has cats and dogs. getAnimal() must return the oldest annimal in the shelter. getCat(), getDog() must return the oldest cat/dog. Any specific animal may not be chosen. 

## Algorithm/Design

First approach:

- Use a single lined list to maintain animals in their order of arrival, head of list is the oldest animal, tail of the list is the newest animal.
- getAnimal() - remove the head from list and return
- getCat()/getDog() - parse list till you find a cat/dog, remove it from list and return

Second Approach:

- Use 2 queues, one for cat and one for dog, each cat/dog node needs to have a timestamp to determine which one is older among the two
- getAnimal() - peek at last element in both queues and return the oldest based on time stamp
- getCat()/getDog() - return the last element in respective queue

Comparison:

- First approach takes less space than the second, no need to maintain timestamp, the order of appearance in list determines older animal
- Needs extra space, but more efficient when we need to get oldest cat/dog

## Code

{% highlight cpp %}

class Animal {
	public:
	int type; // CAT or DOG
	int timestamp;
}

class AnimalShelter {
	std::queue<Animal> catQueue;
	std::queue<Animal> dogQueue;	
	public:
	Animal getAnimal();
	Animal getCat();
	Animal getDog();
}

// returns oldest animal in shelter
Animal AnimalShelter::getAnimal(){
	if(catQueue.peek() == NULL) return dogQueue.pop();
	if(dogQueue.peek() == NULL) return catQueue.pop();
	if(catQueue.peek().timestamp() > dogQueue.peek().timestamp())
		return catQueue.pop();
	else return dogQueue.pop();
}

// returns oldest cat, NULL if no cat exists
Animal AnimalShelter::getCat(){
	return catQueue.pop();
}

// returns oldest dog, NULL if no dog exists
Animal AnimalShelter::getDog(){
	return dogQueue.pop();
}

{% endhighlight %}