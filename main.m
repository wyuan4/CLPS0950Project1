%initiate the main vector for deck
main_deck = repmat(1:13,1,4);

%pull two middle cards from the main deck
[pulled_card1,pulled_card2,new_deck] = middle_card(main_deck);

%split the deck into two from the middle (for the two players); 
%potentially think about randomizing the hands later on in the process
p1_deck = new_deck(1:length(new_deck)/2);
p2_deck = new_deck(length(new_deck)/2:end);