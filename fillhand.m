function [new_hand, new_deck, drawable] = fillhand(hand,deck)
%FILLHAND Fills player's hand from their deck so that there are 5 cards in
%each player's hand
num_needed = 5-length(hand);%#of cards that need to be drawn
drawable = true;

if length(hand) == 5 || isempty(deck)%Hand is full, so don't draw; deck is empty, so don't draw
    drawable = false;
    new_hand = hand;
    new_deck = deck;
    return

elseif length(deck)< num_needed%If deck doesn't have enough cards, put the rest of the deck into hand
    new_hand = [hand, deck];
    new_deck = [];
else
    new_hand = [hand,deck(1:num_needed)];%otherwise, add cards into hand from deck
    deck(1:num_needed)= [];
    new_deck = deck;
end

end

