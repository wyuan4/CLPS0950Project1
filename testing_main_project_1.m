%Initiate the main vector for deck, ask if player wants to play with Jokers

main_deck = repmat(1:13, 1, 4);

str = input('Would you like to play with Jokers? Yes/No [Answer]: ','s');

if strcmp(str,'Yes') 
    [main_deck] = addJokers(main_deck); %this is the main deck, composed of four vectors of integers from 1 to 13
end

%next, implement the checkflip function to add a step (if statement) that checks if
%players have jokers, putting down the joker, and then randomly assigning
%one of the players to put down the next random card (any card). continuing
%the game after that.

%shuffle main deck
main_deck = main_deck(randperm(length(main_deck)));

%pull two middle cards from the main deck
[middle_card1, middle_card2, new_deck] = middle_card(main_deck)

%split the deck into two from the middle (for the two players); 
%potentially think about randomizing the hands later on in the process
p1_deck = new_deck(1:length(new_deck)/2);
p2_deck = new_deck((length(new_deck)/2)+1:end);

%Each player draws five cards from their decks
[p1_hand, p1_deck] = draw_hand(p1_deck)
[p2_hand, p2_deck] = draw_hand(p2_deck)

random_int = randi(2) %this determines who goes first initially

playable = true;
while playable%loops until one player does not have playable cards
    if (random_int == 1)

        %Player 1 takes their turn, and draws card
        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2)
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck)

        %Player 2 takes their turn,, and draws card
        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2)
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck)

    else
        %Player 2 takes their turn,, and draws card
        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2)
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck)

         %Player 1 takes their turn, and draws card
        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2)
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck)
    end

    if isempty(p1_hand) || isempty(p2_hand) %if a player's hand is empty, then end loop
        playable = false;
        break
    end 
    
    if (~drawable1) && (~drawable2) && (length(p1_deck)>=1) && (length(p2_deck)>=1)%Replaces Middle cards with next card from deck.
        middle_card1 = p1_deck(1)
        p1_deck(1) = [];
        middle_card2 = p2_deck(1)
        p2_deck(1) = [];

    elseif (~drawable1) && (~drawable2) && ((isempty(p1_deck)) || (isempty(p2_deck)))%If either players decks are empty, take random card from players hand
        middle_card1 = p1_hand(1)
        p1_hand(1) = [];
        middle_card2 = p2_hand(1)
        p2_hand(1) = [];
    end

    arrstr = input('Type Yes for a visual of the end of this turn [Answer]: ','s');  

    if strcmp(arrstr,'Yes')
    visual_test(p1_hand, p2_hand, middle_card1,middle_card2)%creates visual render of the final result of the turn%  
    end

    arrstr2 = input('Advance to next turn? Yes/No [Answer]: ', 's'); %Asks if user wants to advance to the next turn

    if strcmp(arrstr2, 'Yes') %If yes, continue to next turn.

    end
       
end
    


%display player 1 as winner if player 1 has an empty hand. Same for player2
if isempty(p1_hand)
    disp('Player One WINS!!!');
    
else
    disp('Player Two WINS!!!');
  
end
