function [new_hand, new_mc1, new_mc2] = checkflip(hand,mc1,mc2)
%CHECKFLIP Checks to see if a card in the hand can be placed down 
% on any middle card. Replaces middle card with flippable card in hand.
%Takes card out of hand. Returns new hand and new middle cards.
%Next, we implemented the checkflip function to add a step (if statement) that checks if
%players have jokers, putting down the joker, and then randomly assigning
%one of the players to put down the next random card (any card). continuing
%the game after that.
len = length(hand);

if len == 0 %Returns empty hand and new middle cards.
    new_hand=hand;
    new_mc1=mc1;
    new_mc2=mc2;
else
    for i=randi(len):-1:1%Goes through hand and replaces middle card if possible while removing card from hand. Also checks if middle card is a joker. Also checks if cards can crossover (ace to 1, and vice versa)
        if hand(i) == mc1+1 || hand(i) == mc1-1 || mc1 == 1000 || (hand(i) == 1 && mc1 == 13) || (hand(i) == 13 && mc1 == 1) 
            mc1 = hand(i);
            hand(i) = [];
        elseif  hand(i) == mc2+1|| hand(i) == mc2-1 || mc2 == 1000 || (hand(i) == 1 && mc2 == 13) || (hand(i) == 13 && mc2 == 1)
            mc2 = hand(i);
            hand(i) = [];
        end
    end
    if len > length(hand)%Calls function recursively to check if any prior cards can be played
        [new_hand, new_mc1,new_mc2] = checkflip(hand, mc1, mc2);
    elseif sum(hand) > 1000 %If hand sum is greater than 1000, there is a joker in the hand
        for i=len:-1:1
            if (hand(i) == 1000) %check if hand has joker
                if (mc1 == 1000) % if middle card 1 is already a joker, don't want to place jokers on top of each other
                    mc2 = hand(i);
                    hand(i) = [];
                else
                    mc1 = hand(i); %if mc1 is already a joker and the other player also has to place down a joker, then mc1 becomes the joker
                    hand(i) = [];
                end
            end
        end
        [new_hand, new_mc1, new_mc2] = checkflip(hand, mc1, mc2);
    else % if hand size hasn't changed, there are no cards that can be played so returns same hand and middle cards
        new_hand=hand;
        new_mc1=mc1;
        new_mc2=mc2;
    end
end









