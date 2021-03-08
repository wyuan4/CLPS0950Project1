function [new_hand, new_mc1, new_mc2] = checkflip(hand,mc1,mc2)
%CHECKFLIP Checks to see if a card in the hand can be placed down 
% on any middle card. Replaces middle card with flippable card in hand.
%Takes card out of hand. Returns new hand and new middle cards.
len = length(hand);

if len == 0 %Returns empty hand and new middle cards.
    new_hand=hand;
    new_mc1=mc1;
    new_mc2=mc2;
else
    for i=len:-1:1%Goes through hand and replaces middle card if possible while removing card from hand
        if hand(i) == mc1+1 | hand(i) == mc1-1 
            mc1 = hand(i);
            hand(i) = [];
        elseif  hand(i) == mc2+1| hand(i) == mc2-1
            mc2 = hand(i);
            hand(i) = [];
        end
    end
    if len > length(hand)%Calls function recursively to check if any prior cards can be played
        [new_hand, new_mc1,new_mc2] = checkflip(hand, mc1, mc2);
    else%If hand size hasn't changed, there are no cards that can be played
        new_hand=hand;
        new_mc1=mc1;
        new_mc2=mc2;
    end
end









