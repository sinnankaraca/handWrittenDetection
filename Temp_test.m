clc,close all, clear all;
i = imread('template_sinan.jpg');
i_gray = rgb2gray(i);
thres = graythresh(i_gray);
i_pre =~ im2bw(i_gray,thres);
i_pres = bwareaopen (i_pre,30);

Re=i_pres;
count=0;
while 1
    
    [Fl Re]=lineo(Re);
    re=Fl;
    while 1 
        [f1 re] = extract_letter1(re);
        im_resize = imresize(f1,[42 24]);
        count=count+1;
        imwrite(im_resize, sprintf('%d.bmp', count) );
        
        if isempty(re) 
           break;
        end
    end
    if isempty(Re) 
        break
    end
end