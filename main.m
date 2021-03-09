%initiate the main vector for deck, ask if player wants jokers in
%deck or not and then adds jokers if user says 'Yes'
str = input('Would you like to play with Jokers? Yes/No [Answer]: ','s');
P1_Win = 0;
P2_Win = 0;

for X = 1:10 %The user can decide how many simulations they want to run
main_deck = repmat(1:13,1,4); %this is the main deck, composed of four vectors of integers from 1 to 13
Jokerable = false; %if deck has jokers, will turn true once addJokers function is called
random_int = randi(2); %this determines who goes first initially

if strcmp(str,'Yes') 
    [main_deck, Jokerable] = addJokers(main_deck);
end

%next, implement the checkflip function to add a step (if statement) that checks if
%players have jokers, putting down the joker, and then randomly assigning
%one of the players to put down the next random card (any card). continuing
%the game after that.

%shuffle main deck
main_deck = main_deck(randperm(length(main_deck)));

%pull two middle cards from the main deck

[middle_card1, middle_card2, new_deck] = middle_card(main_deck);

%split the deck into two from the middle (for the two players); 
%potentially think about randomizing the hands later on in the process
p1_deck = new_deck(1:length(new_deck)/2);
p2_deck = new_deck((length(new_deck)/2)+1:end);

%shuffles each players' decks
%p1_deck = p1_deck(randperm(length(p1_deck)));
%p2_deck = p2_deck(randperm(length(p2_deck)));

%Each player draws five cards from their decks
[p1_hand, p1_deck] = draw_hand(p1_deck);
[p2_hand, p2_deck] = draw_hand(p2_deck);

playable = true;
if (random_int == 1)
    while playable%loops until one player does not have playable cards

        %Player 1 takes their turn, and draws card
        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2);
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck);

        %Player 2 takes their turn,, and draws card
        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2);
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck);

        if (~drawable1) && (~drawable2)%Replaces Middle cards with random cards. Come back to this maybe??
            middle_card1 = randi(13);
            middle_card2 = randi(13);
        end

        if isempty(p1_hand) || isempty(p2_hand) %if a player's hand is empty, then end loop
            playable = false;
        end

    end
else
    while playable%loops until one player does not have playable cards

        %Player 2 takes their turn,, and draws card
        [p2_hand,middle_card1,middle_card2] = checkflip(p2_hand,middle_card1,middle_card2);
        [p2_hand, p2_deck, drawable2] = fillhand(p2_hand,p2_deck);

         %Player 1 takes their turn, and draws card
        [p1_hand,middle_card1,middle_card2] = checkflip(p1_hand,middle_card1,middle_card2);
        [p1_hand, p1_deck, drawable1] = fillhand(p1_hand,p1_deck);

        if (~drawable1) && (~drawable2)%Replaces Middle cards with random cards. Come back to this maybe??
            middle_card1 = randi(13);
            middle_card2 = randi(13);
        end

        if isempty(p2_hand) || isempty(p1_hand) %if a player's hand is empty, then end loop
            playable = false;
        end
    end
end

%display player 1 as winner if player 1 has an empty hand. Same for player2
if isempty(p1_hand)
    P1_Win = P1_Win + 1;
    
else
    P2_Win = P2_Win + 1;
  
end

%I don't think we need these but someone lmk, otherwise we can delete -Kennedy:
% disp('Player One Wins ='); disp(P1_Win);
% disp('Player Two Wins ='); disp(P2_Win);
end

%This string of code simply shows the ultimate winner in the simulated
%speed-off.
if P1_Win > P2_Win
    disp('Player One is the supreme champion!!!');
elseif P2_Win > P1_Win
    disp('Player Two is the supreme champion!!!');
else disp('We tied. Time for a deathmatch!');
end

%This is to create a bar graph comparing the total wins of P1 and P2
y = [P1_Win P2_Win];
bar(y);
xlabel('Player N');
ylabel('Total Wins');












