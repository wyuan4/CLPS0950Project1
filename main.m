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


%split the deck into two from the middle (for the two players); 
%potentially think about randomizing the hands later on in the process
p1_deck = main_deck(1:length(main_deck)/2);
p2_deck = main_deck((length(main_deck)/2)+1:end);

%shuffles each players' decks
%p1_deck = p1_deck(randperm(length(p1_deck)));
%p2_deck = p2_deck(randperm(length(p2_deck)));

%Each player draws five cards from their decks
[p1_hand, p1_deck] = draw_hand(p1_deck);
[p2_hand, p2_deck] = draw_hand(p2_deck);

%pull two middle cards from the main deck AFTER players draw from hands as
%to not have overlapping same cards in middle cards and players hands
[middle_card1, middle_card2, new_deck] = middle_card(main_deck);

random_int = randi(2); %this determines who goes first initially

playable = true;
if (random_int == 1)
    while playable%loops until one player does not have playable cards
        
        %Player 1 takes their turn, and draws card
        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2);
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck);

        %Player 2 takes their turn,, and draws card
        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2);
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck);

        if (~drawable1) && (~drawable2) && (length(p1_deck)>=1) && (length(p2_deck)>=1)%Replaces Middle cards with random cards.
            middle_card1 = p1_deck(1);
            middle_card2 = p2_deck(1);
        elseif (~drawable1) && (~drawable2) && (isempty(p1_deck)) && (isempty(p2_deck))%If both players decks are empty, take random card from players hand
            middle_card1 = p1_hand(1);
            middle_card2 = p2_hand(1);
        end
        
        if isempty(p1_hand) || isempty(p2_hand) %if a player's hand is empty, then end loop
            playable = false;
        end 
        
        arrstr = input('Type Yes for a visual of the end of this turn [Answer]: ','s');  
        
        if strcmp(arrstr,'Yes')
        visual_test(p1_hand, p2_hand, middle_card1,middle_card2)%creates visual render of the final result of the turn%  
        end
        
        arrstr2 = input('Advance to next turn? Yes/No [Answer]: ', 's'); %Asks if user wants to advance to the next turn
        
        if strcmp(arrstr2, 'Yes') %If yes, continue to next turn.
            
        end
        
    end
    
else
    while playable%loops until one player does not have playable cards
        
        %Player 2 takes their turn,, and draws card
        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2);
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck);
        
         %Player 1 takes their turn, and draws card
        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2);
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck);
        
        if (~drawable1) && (~drawable2) && (length(p1_deck)>=1) && (length(p2_deck)>=1)%Replaces Middle cards with random cards from decks.
            middle_card1 = p1_deck(1);
            p1_deck(1) = [];
            middle_card2 = p2_deck(1);
            p2_deck(1) = [];
        elseif (~drawable1) && (~drawable2) && (isempty(p1_deck)) && (isempty(p2_deck))%If both players decks are empty, take random card from players hand
            middle_card1 = p1_hand(1);
            p1_hand(1) = [];
            middle_card2 = p2_hand(1);
            p2_hand(1) = [];
        end
        
        if isempty(p2_hand) || isempty(p1_hand) %if a player's hand is empty, then end loop
            playable = false;
        end
        
        arrstr = input('Type Yes for a visual of the end of this turn [Answer]: ','s');       
        
        if strcmp(arrstr,'Yes')
        visual_test(p1_hand, p2_hand, middle_card1,middle_card2) %creates visual render of the final result of the turn%
        end
        
        arrstr2 = input('Advance to next turn? Yes/No [Answer]: ', 's'); %Asks player if want to advance to next turn
        
        if strcmp(arrstr2, 'Yes') %If yes, continue to next turn.
            
        end
        
    end
    

end


%display player 1 as winner if player 1 has an empty hand. Same for player2
if isempty(p1_hand)
    disp('Player One WINS!!!');
    
else
    disp('Player Two WINS!!!');
  
end














