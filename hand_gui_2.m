function varargout = hand_gui_2(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @hand_gui_2_OpeningFcn, ...
                   'gui_OutputFcn',  @hand_gui_2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function hand_gui_2_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);
function varargout = hand_gui_2_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)
axes(handles.axes1);
warning off 
clc, clear all;
path = 'C:\Users\Sinan\Desktop\Sinan_ocr\hand';
filter = '*.bmp';
selectedFile = uigetfile(fullfile(path ,filter));
i=imread(selectedFile);

% i = imread('DENEME3.jpg');
i_gray = rgb2gray(i);
thres = graythresh(i_gray);
i_pre =~ im2bw(i_gray,thres);
i_pres = bwareaopen (i_pre,30);
% figure(2);
imshow(i);

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

        space_max = max(space_vector)*0.7;
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
        break%asd
    end
end
fclose(file);
function pushbutton2_Callback(hObject, eventdata, handles)
text = fileread('C:\Users\Sinan\Desktop\Sinan\Lessons 4-1\image processin\Sinan_ocr\Sinan el yazýsý\text.txt');
set(handles.text1,'String',text);
