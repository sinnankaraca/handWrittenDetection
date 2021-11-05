function [fl re space] = extract_letter(input_im)
input_im_1=clip(input_im);
num_filas=size(input_im_1,2);
fl = [];
re = [];
for s=1:num_filas
    if   sum(input_im_1(:,s)) == 0
        nm=input_im_1(:,1:s-1);    
        rm=input_im_1(:,s:end);
        fl = clip(nm);
        re=clip(rm);
        space = size(rm,2)-size(re,2);
       break
    else
        fl=input_im_1;
        re=[ ];
        space=0;
       
    end
end
