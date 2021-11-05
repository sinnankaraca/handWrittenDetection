
for a=1:1:5

switch a
    case 1,3
        fprintf('a\n');
    case 2
    case 3
        fprintf('b');
        disp('c');
    case 4
        disp('d');
    otherwise
        disp('e');
end
end