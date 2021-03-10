%increment showing each new card that is played every turn

%A function that takes in an input of what the cards are in each players 
%hand as well as what the middle cards are and displays the images 
%associated with the cards in each player's hand as
%well as the cards in the middle. If there are less than 5 cards in a
%player's hand, the location in the subplot will be changed to empty and
%will not show an image. The output is the image associated with 
%the cards in each players' hands and in the middle.

function [table_image] = visual_test(p_hand1, p_hand2, mc1, mc2)

    %assigns appropriate card images or blanks for player one's hand
    for i = 1:length(p_hand1)
        table_image = subplot(3,5,i);
        imagesc(img_retrieve(p_hand1(i)))
        axis off
        axis image
    end
    
    for j = 1:(5-length(p_hand1))
        table_image = subplot(3,5,6-j);
        imagesc([]);
        axis off
        axis image
    end
       
    %assigns appropriate cards or blanks for player two's hand
    for i = 1:length(p_hand2)
        table_image = subplot(3,5,i+10);
        imagesc(img_retrieve(p_hand2(i)))
        axis off
        axis image
    end
    
    for j = 1:(5-length(p_hand2))
        table_image = subplot(3,5,16-j);
        imagesc([]);
        axis off
        axis image
    end
    
    %assigns appropriate cards for middle card1
    table_image = subplot(3,5,7)
    imagesc(img_retrieve(mc1))
    axis off
    axis image
    
    %assigns appropriate cards for middle card2
    table_image = subplot(3,5,9)
    imagesc(img_retrieve(mc2))
    axis off
    axis image
end
    