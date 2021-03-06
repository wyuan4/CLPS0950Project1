function [player_hand,new_player_deck] = draw_hand(player_deck)
%DRAW_HAND take in a player's deck and randomly draws 5 cards to comprise a 
%player's hand
pos = randperm(25,5);
player_hand = zeros(1,5);

sorted_pos = fliplr(sort(pos));%to make sure that positions are not shifted

for i = 1:5
    player_hand(i) = player_deck(sorted_pos(i));
    player_deck(sorted_pos(i)) = [];
end

new_player_deck = player_deck;

end
