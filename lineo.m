function [Fl Re]=lineo(input_im)
input_im=clip(input_im);
imsize=size(input_im,1);
for s=1:imsize
    if sum(input_im(s,:))== 0
        nm = input_im(1:s-1, :); 
        rm = input_im(s:end, :);
        Fl = clip(nm);
        Re = clip(rm);
        break
    else
        Fl=input_im;
        Re=[ ];
    end
end
