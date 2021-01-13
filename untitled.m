function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 28-Jun-2020 14:47:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --------------------------------------------------------------------
function NoktaBazli_Callback(hObject, eventdata, handles)
% hObject    handle to NoktaBazli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1, 'visible','on')
set(handles.panel2, 'visible','off')
set(handles.panel3, 'visible','off')
set(handles.panel4, 'visible','off')
set(handles.panel5, 'visible','off')

% --------------------------------------------------------------------
function alcak_Callback(hObject, eventdata, handles)
% hObject    handle to alcak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1, 'visible','off')
set(handles.panel2, 'visible','on')
set(handles.panel3, 'visible','off')
set(handles.panel4, 'visible','off')
set(handles.panel5, 'visible','off')

% --------------------------------------------------------------------
function yuksek_Callback(hObject, eventdata, handles)
% hObject    handle to yuksek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1, 'visible','off')
set(handles.panel2, 'visible','off')
set(handles.panel3, 'visible','on')
set(handles.panel4, 'visible','off')
set(handles.panel5, 'visible','off')

% --------------------------------------------------------------------
function morfolojik_Callback(hObject, eventdata, handles)
% hObject    handle to morfolojik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1, 'visible','off')
set(handles.panel2, 'visible','off')
set(handles.panel3, 'visible','off')
set(handles.panel4, 'visible','on')
set(handles.panel5, 'visible','off')

% --------------------------------------------------------------------
function goruntu_Callback(hObject, eventdata, handles)
% hObject    handle to goruntu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.panel1, 'visible','off')
set(handles.panel2, 'visible','off')
set(handles.panel3, 'visible','off')
set(handles.panel4, 'visible','off')
set(handles.panel5, 'visible','on')


% --------------------------------------------------------------------
function sec_Callback(hObject, eventdata, handles)
% hObject    handle to sec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname]=uigetfile({'*.jpg';'*.gif';'*.png';'*.ppm';'*.pgm'}, 'Görüntü Dosyasini Seç:','Multiselect','On');
name=strcat(pathname,filename);


handles.a = imread(name);
axes(handles.axes1);
imshow(handles.a)
img= handles.a;
handles.b = imread(name);
axes(handles.axes7);
imshow(handles.b);
img = handles.b;
handles.b = imread(name);
axes(handles.axes7);
imshow(handles.b);
img = handles.b;
handles.c = imread(name);
axes(handles.axes10);
imshow(handles.c);
img = handles.c;
handles.d = imread(name);
axes(handles.axes12);
imshow(handles.d);
img = handles.d;
data_image=struct('img',img);
hObject.UserData= data_image;
clear axes scale
axis off
guidata(hObject,handles);




% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function log_prm_Callback(hObject, eventdata, handles)
% hObject    handle to log_prm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of log_prm as text
%        str2double(get(hObject,'String')) returns contents of log_prm as a double


% --- Executes during object creation, after setting all properties.
function log_prm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to log_prm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in log_button.
function log_button_Callback(hObject, eventdata, handles)
% hObject    handle to log_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = findobj('Tag','sec');
          data_image = h.UserData;
c = str2double(char(get(handles.log_prm,'String')));
if isempty(c) || c <= 0
     f = msgbox('Dogru deger giriniz', 'Error','error');
    
else 
    gray_image=rgb2gray(handles.a);
    double_value=im2double(gray_image);
    Output = c*log(1+double_value);
    axes(handles.axes6);
    imshow(Output);
    clear axes scale
    axis off
    global Output;
end



% --- Executes on button press in hstesit_button.
function hstesit_button_Callback(hObject, eventdata, handles)
% hObject    handle to hstesit_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = findobj('Tag','sec');
          data_image = h.UserData;
I = double(handles.a);
[m,n,~] = size(I);
L = 0:255;
C = zeros(1,256);
for i = 1:m
    for j = 1:n
        for k = 1:256
            if (I(i,j) == L(k))
                C(k) = C(k) + 1;
            end
        end
    end
end
c_prob = C/ (m*n);
cc_prob = cumsum(c_prob);
out_int = zeros (1,256);
for i = 1:256
    out_int(i) = floor(((cc_prob(i)-min(cc_prob))/(1-min(cc_prob)))*255 + 0.5);
end
I_out = zeros(m,n);
for i = 1:m
    for j = 1:n
        I_out(i,j) = out_int(I(i,j) + 1);
    end
end
axes(handles.axes6);
imshow(uint8(I_out));
global I_out;
clear axes scale
axis off


% --- Executes on button press in gri_button.
function gri_button_Callback(hObject, eventdata, handles)
% hObject    handle to gri_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = findobj('Tag','sec');
          data_image = h.UserData;
grayscale_image=double(rgb2gray(handles.a));
axes(handles.axes6);
imshow(uint8(grayscale_image));
gri = uint8(grayscale_image);
global gri;
clear axes scale
axis off


% --- Executes on button press in kontrast_button.
function kontrast_button_Callback(hObject, eventdata, handles)
% hObject    handle to kontrast_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = findobj('Tag','sec');
          data_image = h.UserData;
I1 = handles.a;
I = rgb2gray(I1);
x = max(max(I));
y = min(min(I));
x = double(x);
prob1 = x / 255;
y = double(y);
prob2 = y / 255;
c = str2double(char(get(handles.min_edit,'String')));
d = str2double(char(get(handles.max_edit,'String')));
if isempty(c) || c <= 0 || c >=1 || c>d || isempty(d) || d <= 0 || d >=1 
     f = msgbox('Dogru deger giriniz', 'Error','error');
    
else 
    I2 = imadjust(I, [prob2,prob1], [c,d]);
axes(handles.axes6);
imshow(I2);
global I2;
clear axes scale
axis off
end




function min_edit_Callback(hObject, eventdata, handles)
% hObject    handle to min_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of min_edit as text
%        str2double(get(hObject,'String')) returns contents of min_edit as a double


% --- Executes during object creation, after setting all properties.
function min_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to min_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function max_edit_Callback(hObject, eventdata, handles)
% hObject    handle to max_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max_edit as text
%        str2double(get(hObject,'String')) returns contents of max_edit as a double


% --- Executes during object creation, after setting all properties.
function max_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in thresh_button.
function thresh_button_Callback(hObject, eventdata, handles)
% hObject    handle to thresh_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c = str2num(char(get(handles.thresh_edit,'String')));
I = handles.a;
[m,n,~] = size(I);
Ithresh=zeros(m,n);
for i =1:m
    for j=1:n
        if(I(i,j)>c)
            Ithresh(i,j) = 1;
        else
            Ithresh(i,j) = 0;
        end
    end
end
axes(handles.axes6);
imshow(Ithresh);
global Ithresh;
clear axes scale
axis off

function thresh_edit_Callback(hObject, eventdata, handles)
% hObject    handle to thresh_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thresh_edit as text
%        str2double(get(hObject,'String')) returns contents of thresh_edit as a double


% --- Executes during object creation, after setting all properties.
function thresh_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thresh_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in median_button.
function median_button_Callback(hObject, eventdata, handles)
% hObject    handle to median_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c =handles.a;
A = rgb2gray(c);
modifyA=zeros(size(A)+2);
B=zeros(size(A));
for x=1:size(A,1)
   for y=1:size(A,2)
       modifyA(x+1,y+1)=A(x,y);
   end
end
             
for i= 1:size(modifyA,1)-2
    for j=1:size(modifyA,2)-2
        window=zeros(9,1);
        inc=1;
        for x=1:3
            for y=1:3
                window(inc)=modifyA(i+x-1,j+y-1);
                inc=inc+1;
            end
        end
       
        med=sort(window);
       
        B(i,j)=med(5);
       
    end
end

B=uint8(B);
axes(handles.axes8);
imshow(B);
median_B = B;
global median_B;
clear axes scale
axis off

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in gauss_button.
function gauss_button_Callback(hObject, eventdata, handles)
% hObject    handle to gauss_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=rgb2gray(handles.a);
A = fft2(double(I));
A1=fftshift(A);
[m n]=size(A);
R= str2double(char(get(handles.gauss_edit,'String')));
X=0:n-1;
Y=0:m-1;
[X Y] = meshgrid(X,Y);
Cx=0.5*n;
Cy=0.5*m;
Lo=exp(-((X-Cx).^2+(Y-Cy).^2)./(2*R).^2);
J=A1.*Lo;
J1=ifftshift(J);
B1=ifft2(J1);
axes(handles.axes8);
imshow(abs(B1),[12 290]), colormap gray
gauss = int8(B1);
gauss_i = gauss;
global gauss_i;
clear axes scale
axis off

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in mean_button.
function mean_button_Callback(hObject, eventdata, handles)
% hObject    handle to mean_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
k =1;
I1= handles.a;
I2=padarray(I1,[k k],'replicate');
[m,n, ~] = size(I1);
for i=2:(m-1)
    for j=2:(n-1)
        v=I1(i-1:i+1,j-1:j+1);
        r=(sum(v(:)))/9;
        c(i-1,j-1)=uint8(ceil(r));
    end
end

axes(handles.axes8);
imshow(c);
mean_c = c;
global mean_c;
clear axes scale
axis off


function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function gauss_edit_Callback(hObject, eventdata, handles)
% hObject    handle to gauss_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gauss_edit as text
%        str2double(get(hObject,'String')) returns contents of gauss_edit as a double


% --- Executes during object creation, after setting all properties.
function gauss_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gauss_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sobel_button.
function sobel_button_Callback(hObject, eventdata, handles)
% hObject    handle to sobel_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img = rgb2gray(handles.a);
C = double(img);
for i = 1:size(C,1)-2
    for j = 1:size(C,2)-2
        x = ((2*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(2*C(i,j+1)+C(i,j)+C(i,j+2)));
        y = ((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j)));
        
        img(i,j) = sqrt(x.^2+y.^2);
        
    end
end
axes(handles.axes9);
imshow(img);
sobelimg = img;
global sobelimg;
clear axes scale
axis off


% --- Executes on button press in laplace_button.
function laplace_button_Callback(hObject, eventdata, handles)
% hObject    handle to laplace_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

c=handles.a;
filter=[0 -1 0 ; -1 5 -1 ; 0 -1 0];
rows = size(c,1);
cols = size(c,2);
outputimage = zeros(rows,cols);

for row = 2:rows-1
    for col = 2:cols-1
        for i=1:3
        outputimage (row,col,i)= sum (sum(double(c(row-1: row+1, col-1: col+1 , i)) .* filter )); 
        end
    end
end 
c =uint8(c);
axes(handles.axes9);
imshow(outputimage);
global outputimage;
clear axes scale
axis off


% --- Executes on button press in prewitt_button.
function prewitt_button_Callback(hObject, eventdata, handles)
% hObject    handle to prewitt_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=handles.a;
I= rgb2gray(A);
I = im2double(I); 

b=[-1 -1 -1;0 0 0;1 1 1]/6;
c=[-1 0 1; -1 0 1; -1 0 1]/6;
Gx=abs(conv2(I,c,'same'));
Gy=abs(conv2(I,b,'same'));
G = sqrt( Gx.^2 + Gy.^2);
out = G > 0.08995; 
axes(handles.axes9);
imshow(out);
global out;
clear axes scale
axis off




function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in roberts_button.
function roberts_button_Callback(hObject, eventdata, handles)
% hObject    handle to roberts_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input_image=handles.a;
input_image = rgb2gray(input_image); 
input_image = double(input_image); 
filtered_image = zeros(size(input_image)); 
Mx = [1 0; 0 -1]; 
My = [0 1; -1 0]; 
for i = 1:size(input_image, 1) - 1 
    for j = 1:size(input_image, 2) - 1 
         Gx = sum(sum(Mx.*input_image(i:i+1, j:j+1))); 
         Gy = sum(sum(My.*input_image(i:i+1, j:j+1))); 
         filtered_image(i, j) = sqrt(Gx.^2 + Gy.^2); 
    end
end
filtered_image = uint8(filtered_image); 
axes(handles.axes9);
imshow(filtered_image);
global filtered_image;
clear axes scale
axis off

  


% --- Executes during object creation, after setting all properties.
function panel5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in erosion_button.
function erosion_button_Callback(hObject, eventdata, handles)
% hObject    handle to erosion_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=handles.a;
A=im2bw(A);
B=[1 1 0];
C=padarray(A,[0 1],1);
D=false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-2
        L=C(i,j:j+2);

        K=find(B==1);
       if(L(K)==1)
        D(i,j)=1;
        end
    end
end
axes(handles.axes11);
imshow(D);
global D;
clear axes scale
axis off

% --- Executes on button press in opening_button.
function opening_button_Callback(hObject, eventdata, handles)
% hObject    handle to opening_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
resim = handles.a;

resim = im2bw(resim);

y=[1 1 0];
b=padarray(resim,[0 1],1);
c=false(size(resim));

for i=1:size(b,1)
    for j=1:size(b,2)-2
        d=b(i,j:j+2);
        e=find(y==1);
        if(d(e)==1)
            c(i,j)=1;
        end
    end
end

y = [1 1 1 1 1 1 1;];
b = padarray(c,[0,3]);
e = false(size(c));
for i = 1:size(b,1)
    for j=1:size(b,2)-6
        e(i,j)= sum(y&b(i,j:j+6));
    end
end

axes(handles.axes11);
imshow(e);
global e;
clear axes scale
axis off

% --- Executes on button press in dilation_button.
function dilation_button_Callback(hObject, eventdata, handles)
% hObject    handle to dilation_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=handles.a;
A=im2bw(A);
B=[1 1 1 1 1 1 1;];
C=padarray(A,[0 3]);
D1=false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-6
        D1(i,j)=sum(B&C(i,j:j+6));
    end
end
axes(handles.axes11);
imshow(D1);
global D1;
clear axes scale
axis off


% --- Executes on button press in original_button.
function original_button_Callback(hObject, eventdata, handles)
% hObject    handle to original_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_name;
file_name = uigetfile({'*.bmp;*.jpg;*.png;*.tiff;';'*.*'},'Resim Sec');
fileinfo = dir(file_name);
SIZE = fileinfo.bytes;
Size = SIZE/1024;
set(handles.original_text,'string',Size);
axes(handles.axes14);
imshow(file_name);
clear axes scale
axis off


% --- Executes on button press in lossless2_button.
function lossless2_button_Callback(hObject, eventdata, handles)
% hObject    handle to lossless2_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_name;
if(~ischar(file_name))
   errordlg('Resim Sec');
else
    img = imread(file_name);
[w,l]=size(img(:,:,1));
m=(floor(w/8)+1)*8;
n=(floor(l/8)+1)*8;
p=padarray(img,[m-w n-l],0,'post');

Q= [16    11    10    16    24    40    51    61;
    12    12    14    19    26    58    60    55;
    14    13    16    24    40    57    69    56;
    14    17    22    29    51    87    80    62;
    18    22    37    56    68   109   103    77;
    24    35    55    64    81   104   113    92;
    49    64    78    87   103   121   120   101;
    72    92    95    98   112   100   103    99];

IDCT=zeros(m,n);
N=8;
for i=1:N:m
    for j=1:N:n
        pixel=p(i:i+N-1,j:j+N-1,:);  
        dct_1=dct2(pixel(:,:,1));
        dct_2=dct2(pixel(:,:,2));
        dct_3=dct2(pixel(:,:,3));
        dcc_1=round(dct_1./Q);
        dcc_2=round(dct_2./Q);
        dcc_3=round(dct_3./Q);
        idcc_1=zeros(N,N);
        idcc_2=zeros(N,N);
        idcc_3=zeros(N,N);
        for x=1:N
            for y=1:N
                idcc_1(x,y)=dcc_1(x,y)*Q(x,y);
                idcc_2(x,y)=dcc_2(x,y)*Q(x,y);
                idcc_3(x,y)=dcc_3(x,y)*Q(x,y);
            end
        end
        idct_1=idct2(idcc_1);
        idct_2=idct2(idcc_2);
        idct_3=idct2(idcc_3);
        IDCT(i:i+N-1,j:j+N-1,1)=idct_1;
        IDCT(i:i+N-1,j:j+N-1,2)=idct_2;
        IDCT(i:i+N-1,j:j+N-1,3)=idct_3;
    end
end
new=uint8(IDCT);
new2=new(1:w,1:l,:);
imwrite(new2,'Kayipsiz2.jpg');
fileinfo = dir('Kayipsiz2.jpg');
SIZE = fileinfo.bytes;
Size = SIZE/1024;
set(handles.lossless2_text,'string',Size);
axes(handles.axes13);
imshow(new2);
clear axes scale
axis off
end

% --- Executes on button press in lossless1_button.
function lossless1_button_Callback(hObject, eventdata, handles)
% hObject    handle to lossless1_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_name;
if(~ischar(file_name))
   errordlg('Resim Sec');
else
    I1 = imread(file_name);

I = I1(:,:,1);
I = im2double(I);
T = dctmtx(8);
B = blkproc(I,[8 8],'P1*x*P2',T,T');
mask = [1   1   1   1   0   0   0   0
        1   1   1   0   0   0   0   0
        1   1   0   0   0   0   0   0
        1   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0];
B2 = blkproc(B,[8 8],'P1.*x',mask);
I2 = blkproc(B2,[8 8],'P1*x*P2',T',T);

I = I1(:,:,2);
I = im2double(I);
T = dctmtx(8);
B = blkproc(I,[8 8],'P1*x*P2',T,T');
mask = [1   1   1   1   0   0   0   0
        1   1   1   0   0   0   0   0
        1   1   0   0   0   0   0   0
        1   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0];
B2 = blkproc(B,[8 8],'P1.*x',mask);
I3 = blkproc(B2,[8 8],'P1*x*P2',T',T);


I = I1(:,:,3);
I = im2double(I);
T = dctmtx(8);
B = blkproc(I,[8 8],'P1*x*P2',T,T');
mask = [1   1   1   1   0   0   0   0
        1   1   1   0   0   0   0   0
        1   1   0   0   0   0   0   0
        1   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0];
B2 = blkproc(B,[8 8],'P1.*x',mask);
I4 = blkproc(B2,[8 8],'P1*x*P2',T',T);


L(:,:,:)=cat(3,I2, I3, I4);
imwrite(L,'Kayipsiz1.jpg');

fileinfo = dir('Kayipsiz1.jpg');
SIZE = fileinfo.bytes;
Size = SIZE/1024;
set(handles.lossless1_text,'string',Size);
axes(handles.axes13);
imshow(file_name);
clear axes scale
axis off
end


% --- Executes on button press in lossy1_button.
function lossy1_button_Callback(hObject, eventdata, handles)
% hObject    handle to lossy1_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_name;
if(~ischar(file_name))
   errordlg('Resim Sec');
else
    I = imread(file_name);
[w,l]=size(I(:,:,1));
I=double(I);
row=size(I,1);
col=size(I,2);
rown=floor(col/8); 
coln=floor(row/8); 
s8=[];
for k=1:3 
    for i=1:row        
        row_DCT=dct(I(i,:,k));
        s8(i,:,k)=idct(row_DCT(1:rown),row); 
    end
end
s8y=[];
for k=1:3    
    for i=1:col        
       col_DCT=dct(s8(:,i,k)); 
       s8y(:,i,k)=idct(col_DCT(1:coln),col); 
    end
end
new=uint8(s8y);
new2=new(1:w,1:l,:);
imwrite(new2,'Kayipli1.jpg');
fileinfo = dir('Kayipli1.jpg');
SIZE = fileinfo.bytes;
Size = SIZE/1024;
set(handles.lossy1_text,'string',Size);
axes(handles.axes13);
imshow(uint8(s8y));
clear axes scale
axis off
end
% --- Executes on button press in lossy1_button.
function lossy2_button_Callback(hObject, eventdata, handles)
% hObject    handle to lossy2_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_name;

if(~ischar(file_name))
   errordlg('Resim Sec');
else
   X=imread(file_name);


X=X(1:256,1:256);


f=X;
[m n]=size(X);
k=n/2;
for i=1:1:m
for j=1:1:k
f(i,j) =X(i,2*j)+X(1,2*j-1);
f(i,j+k) = X(i,2*j) - X(i,2*j-1);
end
end
X = f;
k=m/2; 
for j=1:1:n
for i=1:1:k
X(i,j) = uint8((f(2*i,j)+f(2*i-1,j))/2);
X(i+k,j)= uint8((f(2*i,j)-f(2*i-1,j))/2);
end
end
Y=X;
L = Y(1:128,1:128);

imwrite(L,'Kayipli2.jpg');
fileinfo = dir('Kayipli2.jpg');
SIZE = fileinfo.bytes;
Size = SIZE/1024;
set(handles.lossy2_text,'string',Size);
axes(handles.axes13);
imshow(Y(1:128,1:128));
clear axes scale
axis off
end


% --- Executes on button press in close_button.
function close_button_Callback(hObject, eventdata, handles)
% hObject    handle to close_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
resim = handles.a;

resim = im2bw(resim);
y = [1 1 1 1 1 1 1;];
c=false(size(resim));
b = padarray(c,[0,3]);


for i = 1:size(b,1)
    for j=1:size(b,2)-6
        e(i,j)= sum(y&b(i,j:j+6));
    end
end


y=[1 1 0];
b=padarray(resim,[0 1],1);
c=false(size(resim));

for i=1:size(b,1)
    for j=1:size(b,2)-2
        d=b(i,j:j+2);
        e=find(y==1);
        if(d(e)==1)
            c(i,j)=1;
        end
    end
end

axes(handles.axes11);
imshow(c);
global c;
clear axes scale
axis off


% --- Executes on button press in esik_kaydet.
function esik_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to esik_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Ithresh;
imwrite(Ithresh,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Esiklenmis.jpg');


% --- Executes on button press in log_kaydet.
function log_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to log_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Output;
imwrite(Output,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Logaritma.jpg');

% --- Executes on button press in gri_kaydet.
function gri_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to gri_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gri;
imwrite(gri,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Gri.jpg');

% --- Executes on button press in kontrast_kaydet.
function kontrast_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to kontrast_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I2;
imwrite(I2,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Kontrast.jpg');

% --- Executes on button press in hist_kaydet.
function hist_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to hist_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I_out;
imwrite(I_out,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\HistogramEsitleme.jpg');


% --- Executes on button press in asinma_kaydet.
function asinma_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to asinma_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global D;
imwrite(D,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Asinma.jpg');

% --- Executes on button press in genisleme_kaydet.
function genisleme_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to genisleme_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global D1;
imwrite(D1,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Genisleme.jpg');

% --- Executes on button press in acma_kaydet.
function acma_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to acma_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global e;
imwrite(e,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Acma.jpg');

% --- Executes on button press in kapama_kaydet.
function kapama_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to kapama_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global c;
imwrite(c,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Kapama.jpg');


% --- Executes on button press in sobel_kaydet.
function sobel_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to sobel_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global sobelimg;
imwrite(sobelimg,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Sobel.jpg');

% --- Executes on button press in prewitt_kaydet.
function prewitt_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to prewitt_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global out;
imwrite(out,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Prewitt.jpg');

% --- Executes on button press in laplace_kaydet.
function laplace_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to laplace_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global outputimage;
imwrite(outputimage,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Laplace.jpg');

% --- Executes on button press in roberts_kaydet.
function roberts_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to roberts_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filtered_image;
imwrite(filtered_image,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Roberts.jpg');


% --- Executes on button press in mean_kaydet.
function mean_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to mean_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mean_c;
imwrite(mean_c,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Mean.jpg');

% --- Executes on button press in median_kaydet.
function median_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to median_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global median_B;
imwrite(median_B,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Median.jpg');

% --- Executes on button press in gauss_kaydet.
function gauss_kaydet_Callback(hObject, eventdata, handles)
% hObject    handle to gauss_kaydet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gauss_i;
imwrite(gauss_i,'D:\Programs\MATLAB\MATLAB Production Server\R2015a\bin\GUI Resimler\Gauss.jpg');
