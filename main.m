%%This is the main script for Speed that can be played to see a visual
%representation of the game in a plot of card images. The user must input
%whether they would like to add jokers into the game and then input 'Yes'
%to see a visual representation of the cards and to move forward with the
%game after each player gets a turn.

%Initiate the main vector for deck, ask if player wants to play with Jokers
main_deck = repmat(1:13, 1, 4);

str = input('Would you like to play with Jokers? Yes/No [Answer]: ','s');

if strcmp(str,'Yes') 
    [main_deck] = addJokers(main_deck); %this is the main deck, composed of four vectors of integers from 1 to 13
end

%shuffle main deck
main_deck = main_deck(randperm(length(main_deck)));

%pull two initial middle cards from the main deck
[middle_card1, middle_card2, new_deck] = middle_card(main_deck);

%split the deck into two from the middle (for the two players)
p1_deck = new_deck(1:length(new_deck)/2);
p2_deck = new_deck((length(new_deck)/2)+1:end);

%Each player draws five cards from their decks through the draw_hand
%function
[p1_hand, p1_deck] = draw_hand(p1_deck);
[p2_hand, p2_deck] = draw_hand(p2_deck);

random_int = randi(2); %this determines which player goes first initially

playable = true;
while playable%loops until one player does not have anymore playable cards
    %if player 1 is chosen to go first, player 1 takes their turn and
    %draws cards if they put down cards, and then player 2 does the same
    %after. The turn consists of the player checking if they can flip any
    %of the cards in their hand onto the middle card with the check_flip
    %function, and then adding cards from their respective decks if cards
    %were placed down with the fillhand function
    if (random_int == 1)

        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2);
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck);

        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2);
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck);

    else
        %if player 2 is chosen to go first, player 2 takes their turn and
        %draws cards if they put down cards, and player 1 does the same
        %after
        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2);
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck);

        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2);
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck);
    end

    if isempty(p1_hand) || isempty(p2_hand) %if a player's hand is empty, then end loop
        playable = false;
        break
    end 
    
    %Replaces Middle cards with next card from players' decks if both
    %players' cannot put down any cards from their hands
    if (~drawable1) && (~drawable2) && (length(p1_deck)>=1) && (length(p2_deck)>=1)
        middle_card1 = p1_deck(1);
        p1_deck(1) = [];
        middle_card2 = p2_deck(1);
        p2_deck(1) = [];

    %If either players decks are empty, take first card from players' hands
    elseif (~drawable1) && (~drawable2) && ((isempty(p1_deck)) || (isempty(p2_deck)))
        middle_card1 = p1_hand(1);
        p1_hand(1) = [];
        middle_card2 = p2_hand(1);
        p2_hand(1) = [];
    end

    %prompts the user to type in 'Yes' if they would like to see a visual of
    %the turns that were just made
    arrstr = input('Type Yes for a visual of the end of this turn [Answer]: ','s');  

    if strcmp(arrstr,'Yes')
    visual_test(p1_hand, p2_hand, middle_card1,middle_card2) 
    end

    %prompts the user to type in 'Yes' if they would like to continue the
    %game with the next turns 
    arrstr2 = input('Type "Go" when you are ready to advance to the next turn. [Answer]: ', 's'); 

    if strcmp(arrstr2, 'Go') %If yes, continue to next turn.

    end
       
end
    


%display player 1 as winner if player 1 has an empty hand. Same for player2
if isempty(p1_hand)
    disp('Player One WINS!!!');
    
else
    disp('Player Two WINS!!!');
  
end
