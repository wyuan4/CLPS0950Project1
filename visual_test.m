subplot(3,4,1);
img1 = webread('https://i.imgur.com/kD0ASl5.png');
imagesc(img1)
axis off
axis image

img2 = webread('https://i.imgur.com/7sI5Ryi.png');
img3 = webread('https://i.imgur.com/n9d5m1c.png');
img4 = webread('https://i.imgur.com/31AzfTA.png');
img5 = webread('https://i.imgur.com/bGm3bAP.png');
img6 = webread('https://i.imgur.com/VanfFtQ.png');
img7 = webread('https://i.imgur.com/w7QaFxU.png');
img8 = webread('https://i.imgur.com/4n0Y1C3.png');

subplot(3,4,12);
img9 = imread('https://i.imgur.com/LkOqebV.png');
imagesc(img9)
axis off; axis image

img10 = webread('https://i.imgur.com/WCJe2QX.png');

subplot(3,4,6);
url11 = 'https://i.imgur.com/AaxlUGR.png';
img11 = webread(url11);
imagesc(img11)
axis off; axis image

img12 = webread('https://i.imgur.com/O5Xo5Mb.png');

subplot(3,4,11);
url13 = 'https://i.imgur.com/4lhzjZp.png';
img13 = webread(url13);
imagesc(img13)
axis off; axis image