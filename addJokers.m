function [new_deck] = addJokers(deck)
%Changing the main deck to include two Jokers (that have the value of 0)
new_deck = [deck 1000 1000]; %changed from 0 to 1000 so that does not get played after a 1 or ace

end

