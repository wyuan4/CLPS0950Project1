function [new_deck,hasJokers] = addJokers(deck)
%Changing the main deck to include two Jokers (that have the value of 0)
new_deck = [deck 0 0];
hasJokers = true;

end

