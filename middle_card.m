function [pulled_card1,pulled_card2,new_deck] = middle_card(main_deck)
%takes in the main deck, returns random card from deck and removes 
%that card from the main deck to get pulled cards for middle cards
deck_size = length(main_deck);
pos = randperm(deck_size,2);


pulled_card1 = main_deck(pos(1));
pulled_card2 = main_deck(pos(2));
main_deck(max(pos)) = []; %max because after we assign the middle cards, we want the max card to be first
main_deck(min(pos)) = []; 
new_deck = main_deck;

end

