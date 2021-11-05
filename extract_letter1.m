function [fl re] = extract_letter1(input_im)
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
       break
    else
        fl=input_im_1;
        re=[ ];  
    end
end