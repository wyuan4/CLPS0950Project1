function [new_hand, new_deck, drawable] = fillhand(hand,deck)
%FILLHAND Fills player's hand to 5 cards from their deck
%   Detailed explanation goes here
num_needed = 5-length(hand);%#of cards that need to be drawn
drawable = true
if length(hand) == 5%Hand is full, so don't draw
    drawable = false
    return
elseif length(deck)< num_needed%If deck doesn't have enough cards, take rest of the deck
    new_hand = [hand, deck];
    new_deck = [];
else
    new_hand = [hand,deck(1:num_needed)];
    deck(1:num_needed)= [];
    new_deck = deck;
end

end

