img1= imread('wal1.jpg');
img2= imread('wal2.jpg');
img_gray1= rgb2gray(img1);
img_gray2= rgb2gray(img2);

min_value=50;
max_value=200;

img_new= img_gray1;

for i= 1:168
    for j= 1:300
        if(img_gray1(i,j)> min_value && img_gray1(i,j)<max_value && img_gray2(i,j)> min_value && img_gray2(i,j)< max_value)
    img_new(i,j) = (img_gray1(i,j)+ img_gray2(i,j))/2;
    
        else
            img_new(i,j)= 255;
        end
    end
end
imshow(img_new);