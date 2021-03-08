%initiate the main vector for deck
main_deck = repmat(1:13,1,4);

%pull two middle cards from the main deck
[middle_card1, middle_card2, new_deck] = middle_card(main_deck)

%split the deck into two from the middle (for the two players); 
%potentially think about randomizing the hands later on in the process
p1_deck = new_deck(1:length(new_deck)/2)
p2_deck = new_deck((length(new_deck)/2)+1:end);

%shuffles each players' decks
p1_deck = p1_deck(randperm(length(p1_deck)));
p2_deck = p2_deck(randperm(length(p2_deck)));

%Each player draws five cards from their decks
[p1_hand, p1_deck] = draw_hand(p1_deck);
[p2_hand, p2_deck] = draw_hand(p2_deck);

playable = true;

while playable%loops until one player does not have playable cards
   
    %Player 1 takes their turn, and draws card
    [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2)
    [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck)

    %Player 2 takes their turn,, and draws card
    [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2)
    [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck)

    if (~drawable1) && (~drawable2)%Replaces Middle cards with random cards. Come back to this maybe??
        middle_card1 = randi(13);
        middle_card2 = randi(13);
    end
    
    if isempty(p1_hand) || isempty(p2_hand) %if a player's hand is empty, then end loop
        playable = false;
    end
    
end

if isempty(p1_hand)
    disp 'Player 1 is the supreme champion!!!!'
else
    disp 'Player 2 is the supreme champion!!!!'
end











