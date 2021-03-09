function [table_image] = visual_test(p_hand1, p_hand2, mc1, mc2)

img1 = webread('https://i.imgur.com/kD0ASl5.png');%assigns a link of an image of a card to each variable
img2 = webread('https://i.imgur.com/7sI5Ryi.png');
img3 = webread('https://i.imgur.com/n9d5m1c.png');
img4 = webread('https://i.imgur.com/31AzfTA.png');
img5 = webread('https://i.imgur.com/bGm3bAP.png');
img6 = webread('https://i.imgur.com/VanfFtQ.png');
img7 = webread('https://i.imgur.com/w7QaFxU.png');
img8 = webread('https://i.imgur.com/4n0Y1C3.png');
img9 = webread('https://i.imgur.com/LkOqebV.png');
img10 = webread('https://i.imgur.com/WCJe2QX.png');
img11 = webread('https://i.imgur.com/AaxlUGR.png');
img12 = webread('https://i.imgur.com/O5Xo5Mb.png');
img13 = webread('https://i.imgur.com/4lhzjZp.png');
img14 = webread('https://i.imgur.com/XF7FgfM.png');

%assigns appropriate cards for player one's hand%
    for i = 1:5
        table_image= subplot(3,5,i);
        if p_hand1(i) == 1%if card is equal to a value, render appropriate image%
            imagesc(img1)
            axis off
            axis image
        elseif p_hand1(i) == 2
            imagesc(img2)
            axis off
            axis image
        elseif p_hand1(i) == 3
            imagesc(img3)
            axis off
            axis image
        elseif p_hand1(i) == 4
            imagesc(img4)
            axis off
            axis image
        elseif p_hand1(i) == 5
            imagesc(img5)
            axis off
            axis image
        elseif p_hand1(i) == 6
            imagesc(img6)
            axis off
            axis image
        elseif p_hand1(i) == 7
            imagesc(img7)
            axis off
            axis image
        elseif p_hand1(i) == 8
            imagesc(img8)
            axis off
            axis image
        elseif p_hand1(i) == 9
            imagesc(img9)
            axis off
            axis image
        elseif p_hand1(i) == 10
            imagesc(img10)
            axis off
            axis image
        elseif p_hand1(i) == 11
            imagesc(img11)
            axis off
            axis image
        elseif p_hand1(i) == 12
            imagesc(img12)
            axis off
            axis image
        elseif p_hand1(i) == 13
            imagesc(img13)
            axis off
            axis image
        elseif p_hand1(i) == 1000
            imagesc(img14)%joker%
            axis off
            axis image
        end
    end
    %assigns appropriate cards for player two's hand%
    for i = 1:5
        table_image = subplot(3,5,i+10);
        if p_hand2(i) == 1
            imagesc(img1)
            axis off
            axis image
        elseif p_hand2(i) == 2
            imagesc(img2)
            axis off
            axis image
        elseif p_hand2(i) == 3
            imagesc(img3)
            axis off
            axis image
        elseif p_hand2(i) == 4
            imagesc(img4)
            axis off
            axis image
        elseif p_hand2(i) == 5
            imagesc(img5)
            axis off
            axis image
        elseif p_hand2(i) == 6
            imagesc(img6)
            axis off
            axis image
        elseif p_hand2(i) == 7
            imagesc(img7)
            axis off
            axis image
        elseif p_hand2(i) == 8
            imagesc(img8)
            axis off
            axis image
        elseif p_hand2(i) == 9
            imagesc(img9)
            axis off
            axis image
        elseif p_hand2(i) == 10
            imagesc(img10)
            axis off
            axis image
        elseif p_hand2(i) == 11
            imagesc(img11)
            axis off
            axis image
        elseif p_hand2(i) == 12
            imagesc(img12)
            axis off
            axis image
        elseif p_hand2(i) == 13
            imagesc(img13)
            axis off
            axis image
        elseif p_hand2(i) == 1000
            imagesc(img14)%joker%
            axis off
            axis image
        end
    end
    %assigns appropriate cards for middle card1%
    table_image = subplot(3,5,7)
    if mc1 == 1
        imagesc(img1)
        axis off
        axis image
    elseif mc1== 2
        imagesc(img2)
        axis off
        axis image
    elseif mc1== 3
        imagesc(img3)
        axis off
        axis image
    elseif mc1== 4
        imagesc(img4)
        axis off
        axis image
    elseif mc1== 5
        imagesc(img5)
        axis off
        axis image
    elseif mc1== 6
        imagesc(img6)
        axis off
        axis image
    elseif mc1== 7
        imagesc(img7)
        axis off
        axis image
    elseif mc1== 8
        imagesc(img8)
        axis off
        axis image
    elseif mc1== 9
        imagesc(img9)
        axis off
        axis image
    elseif mc1== 10
        imagesc(img10)
        axis off
        axis image
    elseif mc1== 11
        imagesc(img11)
        axis off
        axis image
    elseif mc1== 12
        imagesc(img12)
        axis off
        axis image
    elseif mc1== 13
        imagesc(img13)
        axis off
        axis image
    elseif mc1== 1000
        imagesc(img14)%joker%
        axis off
        axis image
    end
    
    %assigns appropriate cards for middle card1%
    table_image = subplot(3,5,9)
    if mc2 == 1
        imagesc(img1)
        axis off
        axis image
    elseif mc2== 2
        imagesc(img2)
        axis off
        axis image
    elseif mc2== 3
        imagesc(img3)
        axis off
        axis image
    elseif mc2== 4
        imagesc(img4)
        axis off
        axis image
    elseif mc2== 5
        imagesc(img5)
        axis off
        axis image
    elseif mc2== 6
        imagesc(img6)
        axis off
        axis image
    elseif mc2== 7
        imagesc(img7)
        axis off
        axis image
    elseif mc2== 8
        imagesc(img8)
        axis off
        axis image
    elseif mc2== 9
        imagesc(img9)
        axis off
        axis image
    elseif mc2== 10
        imagesc(img10)
        axis off
        axis image
    elseif mc2== 11
        imagesc(img11)
        axis off
        axis image
    elseif mc2== 12
        imagesc(img12)
        axis off
        axis image
    elseif mc2== 13
        imagesc(img13)
        axis off
        axis image
    elseif mc2== 1000
        imagesc(img14)%joker%
        axis off
        axis image
    end
    
    
end
    













