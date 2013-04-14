---
layout: post
title: Boggle game 
categories: recursion afi
---

## Problem

Given a board of characters, generate list of all possible words


## Algorithm

1. Outerloop will loop through all starting points, i.e. every tile in the board.
2. Inner loop would be a recursive loop
3. This will add on a character to the string seen so far 
4. Validate if its a valid prefix or valid word and add to the list of all words
5. From every tile explore all directions adding current tile to the string seen so far and recursing in all directions.
6. Make sure we dont run into the previously explored tiles by using a visited matrix 

## Code    

{% highlight cpp %}

// Boggle: Given a board of characters, generate a list of all the words that are possible

int generateAllWords(vector<vector<char>> board) {
	vector<string> words;
	string curr = "";
	vector<vector<int>> visited; // intialized to 0s
	int row, col = 0;

	int m = board.size();
	int n = board[0].size();
	for(int i=0; i<m; i++) {
		for(int j=0; j<n; j++) {
			generateWords(board, words, curr, visited);
		}
	}

	cout << "List of all possible words are: " << endl;
	for(int i=0; i<words.size(); i++) {
		cout << words[i] << endl;
	}

}

void generateWords(vector<vector<char>>& board, vecotr<string>& words, string& curr, 
					vector<vector<int> visited, int row, int col) {
	if(!isValidPrefix(curr)) return;
	if(isValidWord(curr)) words.add(curr);

	// Try all possible directions
	// Next cell to the right
	if(row < board[0].size()) {
		curr += board[row+1][col];
		visited[row+1][col] = visited;
		generateWords(board, words, curr, visited, row+1, col);
		visited[row+1][col] = 0;
	}
	// Next cell to the bottom
	if(col < board.size()) {
		curr += board[row][col+1];
		visited[row][col+1] = visited;
		generateWords(board, words, curr, visited, row, col+1);
		visited[row][col+1] = 0;	
	}
	// Similarly all other 6 directions (including diagonals)
	// ..
} 

{% endhighlight %}

## Time complexity

O(n^2)


