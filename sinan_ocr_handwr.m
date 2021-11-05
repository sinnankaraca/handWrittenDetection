warning off 
clc,close all, clear all;
path = 'C:\Users\Sinan\Desktop\Sinan_ocr\hand';
filter = '*.bmp';
selectedFile = uigetfile(fullfile(path ,filter));
i=imread(selectedFile);
imshow(i);
title('Input Image with noise');
i_crop=imcrop(i);
i_gray = rgb2gray(i_crop);
thres = graythresh(i_gray);
i_pre =~ im2bw(i_gray,thres);
i_pres = bwareaopen (i_pre,30);
word=[ ];
file = fopen('text.txt','wt');
load templates
global templates
num_sizetemp = size(templates,2);
Re=i_pres;
space_vector=[];
while 1
    
    [Fl Re]=lineo(Re);
    n=0;
    letter_space = [ ];
    re=Fl;
    while 1 
        [f1 re space] = extract_letter(re);
        im_resize = imresize(f1,[42 24]);
        n = n+1;
        space_vector(n) = space;
        rec_letter = letter_corr(im_resize, num_sizetemp);
        word = [word rec_letter];
        if isempty(re) 
           break;
        end

        space_max = max(space_vector)*0.8;
        space_number = 0;
        disp(word);
        for k = 1:n
           letter_space(k + space_number) = word(k);
           if( space_vector(k) > space_max )
              space_number = space_number + 1;
              letter_space(k + space_number ) = ' ';
           end
        end
    end
    letter_space(k+space_number+1)=word(k+1);
    disp(letter_space);
    fprintf(file,'%s\n',letter_space);
    word=[ ];
    letter_space = [ ];
    if isempty(Re) 
        break
    end
end
fclose(file);
winopen('text.txt')

