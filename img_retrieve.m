function [img] = img_retrieve(num)
%IMG_RETRIEVE takes in a number and then returns an image reference
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

if num == 1%if card is equal to a value, render appropriate image%
    img = img1;
elseif num == 2
    img = img2;
elseif num == 3
    img = img3;
elseif num == 4
    img = img4;
elseif num == 5
    img = img5;
elseif num == 6
    img = img6;
elseif num == 7
    img = img7;
elseif num == 8
    img = img8;
elseif num == 9
    img = img9;
elseif num == 10
    img = img10;
elseif num == 11
    img = img11;
elseif num == 12
    img = img12;
elseif num == 13
    img = img13;
elseif num == 1000
    img = img14;%joker%
end

end

