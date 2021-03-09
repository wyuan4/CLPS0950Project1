%trying to put in visuals of the cards being played by using subplots and
%downloaded images 

subplot(3,4,1);
img = imread('\Users\yuanm\Documents\School Documents\CLPS 0950\A_clubs.png');
imagesc(img)
axis off
axis image

subplot(3,4,6);
img2 = imread('\Users\yuanm\Documents\School Documents\CLPS 0950\A_diamonds.png');
imagesc(img2)
axis off; axis image

subplot(3,4,11);
img3 = imread('\Users\yuanm\Documents\School Documents\CLPS 0950\A_hearts.png');
imagesc(img3)
axis off; axis image

subplot(3,4,12);
img4 = imread('\Users\yuanm\Documents\School Documents\CLPS 0950\2_diamonds.png');
imagesc(img4)
axis off; axis image




% speedcardplot(0,0,10,5,'diamonds')
% axis off; axis image
% 
% speedcardplot(10,0,10,6,'spades')
% axis off; axis image
% 
% speedcardplot(0,15,10,11,'clubs')
% axis off; axis image