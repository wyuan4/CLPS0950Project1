# CLPS0950Project1
Matlab code for the card game "Speed"
Name: (Wen) Ashley Yuan, (Bryan) Seong Wook Park, Erik Chen, Kennedy Waite 
Group Name: The Running Brunonians
CLPS 0950
Professor Thomas Serre
03/10/2021

Title: Game of Speed

Abstract: Our project aims to simulate the card game Speed with two players. 
A graphic representation can be displayed to show the current status of the 
game, every time after both players have taken their turns. The main game 
file is simulated once, where the user can type ‘Yes’ into the command 
window to continue to visual display throughout the duration of the game. 
Another game file simulates Speed a total of 50,000 times, and the winner 
of each round is recorded. The final scoreboard of how many rounds each 
player won is displayed at the end of the simulation. 

Instructions to the Game of Speed from our Project Proposal 
(Link: https://docs.google.com/document/u/0/d/1nyVhvckJ13oiCpHOrZC6z32fGy-Mn8Ne16nqoxqftIs/edit)

Instructions:
Run the main file. A message should pop up in the command script asking if 
you want to run the simulation with or without jokers. Type in “Yes” to add 
jokers and “No” to play without jokers. One simulation will either have 
jokers or not. At the end of each turn, the command prompt will ask if you 
want to see a visual display of the game. Each round randomizes which player 
goes first to ensure fairness. We also randomized the length of the turn in 
the checkflip function to increase fairness (Note: This simulates human 
error in which it is not guaranteed that every single thing that can be put 
down will be put down in that turn i.g. if a player has 5 cards and only 
look at 3, those last 2 are never seen and may not be put down that turn 
because we don’t technically see it. If you type “Yes”, a visual 
representation of the game will appear, consisting of each player’s hand 
and the current middle cards. At the end of the run, the command prompt 
will display which player won.  You can also run the statistics tracker 
file to play Speed without visual representations for a total of N times. 
The number of wins for both Player 1 and Player 2 is recorded and displayed 
at the end of the N number of games. A barplot should also show the win 
record for each player.

File Descriptions:

1. main.m
This is the main file that contains our visualized simulation of the game. 
Run this file to see how one theoretical game would play out.
The visualized elements display the end of the previous turn the code runs 
on so that it can display the starting point of the next turn. The top 
row shows Player 1's hand, the two cards in the middle show the middle
cards, and the third row shows Player 2's hands. 


2. Statistics_Tracker.m
This is another script that simulates the game an arbitrary number of times 
through a loop. The default is 50,000 times but the number of iterations 
can be changed easily by the user. The point of this script is not to run 
simulations of the game as described by main.m (which is intended to 
visualize the game) but rather demonstrate the fairness of the game. 


3. visual_test.m
This function takes in both players’ hands and both middle cards and 
returns a figure that displays all the cards on a “table”. For both player 
1’s and player 2’s hand, the function loops through all 5 cards in each 
player’s hand, retrieves the card image associated with each value in the 
hand, and displays it at the appropriate locations of a 3-by-5 subplot. 
Then, the function retrieves the images associated with the values of each 
middle card and displays the images in the middle of the subplot


4. middle_card.m
This function initializes the two middle cards at the beginning of each round.


5. img_retrieve.m
This is a function to retrieve the respective image for the respective card 
inputted. It first initializes all the image variables (img1, img2,..., 
img14) from Imgur urls. Then the function uses an if statement to return 
the associated image for a particular inputted number (i.e. inputting 1 
will retrieve img1 which is an image of an Ace)


6. fillhand.m
This function fills a player’s hand back to 5 cards. This function also 
returns a boolean stating whether a player has drawn a card or not. This 
can later be used to tell whether a player has made a move on their turn, 
so that if both players do not draw a card on their turns, there are no 
cards that can be played, therefore a new middle card must be assigned.  


7. draw_hand.m
This function assigns a hand to each player at the start of each round. 
This function returns their first hand and their respective decks. 


8. checkflip.m
This function is essentially where the main functionality of the game is 
coded. This function checks to see if there are any cards from a player’s 
hand that can be placed down on the middle cards. This function first 
checks a random number of cards in their hand, and plays the card if it 
can be played. Then, we call the function recursively to check if there 
are cards in their hand that can be played on the newly placed middle card. 
The recursive function ends when the hand is empty, or if there aren’t any 
cards that can be played. The number of cards that are checked in a 
player’s hand is randomized, to simulate a lifelike game scenario, where a 
person wouldn’t be able to fully play their hand before the next player’s 
turn. In other words, for each player’s turn, all available cards might not 
be played. Essentially, we dumbed the computer player down to humanize it.
We designed this function, so that a player would place a joker after it 
decides it cannot play anymore cards(technically, it could play a card, but 
because of the randomized number of cards to be checked, the code would 
miss these cards on purpose). If the joker is a middle card, the first card 
to be checked is played on the joker. 
The function receives the player’s hand and middle cards as the input. The 
output is the new middle cards, and the leftover player’s hand. 


9. addJokers.m
This function adds two joker cards to the full deck of cards to be played 
in the game. 


[Demonstration Video](https://user-images.githubusercontent.com/79769852/110718924-ee402680-81d9-11eb-9c06-b2b9709f42a5.mp4)














