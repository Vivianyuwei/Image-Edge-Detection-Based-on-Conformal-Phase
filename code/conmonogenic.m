function varargout = conmonogenic(varargin)
% CONMONOGENIC MATLAB code for conmonogenic.fig
%      CONMONOGENIC, by itself, creates a new CONMONOGENIC or raises the existing
%      singleton*.
%
%      H = CONMONOGENIC returns the handle to a new CONMONOGENIC or the handle to
%      the existing singleton*.
%
%      CONMONOGENIC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONMONOGENIC.M with the given input arguments.
%
%      CONMONOGENIC('Property','Value',...) creates a new CONMONOGENIC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before conmonogenic_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to conmonogenic_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help conmonogenic

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @conmonogenic_OpeningFcn, ...
                   'gui_OutputFcn',  @conmonogenic_OutputFcn, ...
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


% --- Executes just before conmonogenic is made visible.
function conmonogenic_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to conmonogenic (see VARARGIN)

% Choose default command line output for conmonogenic
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes conmonogenic wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = conmonogenic_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function gray_edge_detection_Callback(hObject, eventdata, handles)
% hObject    handle to gray_edge_detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
axes(handles.axes1);
imshow(handles.im,[]);
axes(handles.axes2);
cla reset;
set(handles.axes2,'Color','k');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
guidata(hObject,handles);

% --------------------------------------------------------------------
function RGB_edge_detection_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_edge_detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)~=3
   errordlg('您选取的图片不是彩色图！','温馨提示');
   return;
end
axes(handles.axes1);
imshow(handles.im,[]);
axes(handles.axes2);
cla reset;
set(handles.axes2,'Color','k');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
guidata(hObject,handles);

% --------------------------------------------------------------------
function HSV_edge_detection_Callback(hObject, eventdata, handles)
% hObject    handle to HSV_edge_detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)~=3
   errordlg('您选取的图片不是彩色图！','温馨提示');
   return;
end
axes(handles.axes1);
imshow(handles.im,[]);
axes(handles.axes2);
cla reset;
set(handles.axes2,'Color','k');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
guidata(hObject,handles);

% --------------------------------------------------------------------
function corner_detection_Callback(hObject, eventdata, handles)
% hObject    handle to corner_detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
axes(handles.axes1);
imshow(handles.im,[]);
axes(handles.axes2);
cla reset;
set(handles.axes2,'Color','k');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
guidata(hObject,handles);


% --------------------------------------------------------------------
function feature_extraction_Callback(hObject, eventdata, handles)
% hObject    handle to feature_extraction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
cla reset;
set(handles.axes2,'Color','k');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');



% --------------------------------------------------------------------
function defect_classification_Callback(hObject, eventdata, handles)
% hObject    handle to defect_classification (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function gray_differential_Callback(hObject, eventdata, handles)
% hObject    handle to gray_differential (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function gray_pc_Callback(hObject, eventdata, handles)
% hObject    handle to gray_pc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function Initialization(hObject, eventdata, handles)
set(handles.save_file, 'Enable', 'off');
set(handles.gray_edge_detection, 'Enable', 'off');
set(handles.RGB_edge_detection, 'Enable', 'off');
set(handles.HSV_edge_detection, 'Enable', 'off');
set(handles.corner_detection, 'Enable', 'off');
set(handles.feature_extraction, 'Enable', 'off');

cla(handles.axes1);
cla(handles.axes2);
Image=zeros(256,256);
axes(handles.axes1);
imshow(Image);
axes(handles.axes2);
imshow(Image);
pause(0.001);
set(handles.Time_total,'string','0.0');
guidata(hObject, handles);

% --------------------------------------------------------------------
function open_file_Callback(hObject, eventdata, handles)
% hObject    handle to open_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.tif;*.bmp;*.jpg;*.jpeg;*.gif;*.png','图像文件(*.tif;*.bmp;*.jpg;*.jpeg;*.gif;*.png)'},'选择待处理图片');
[pathstr, name, ext] = fileparts(filename);
if (isequal(filename,0) || isequal(pathname,0))
    disp('User pressed cancel');
    return;
else
    disp(['User selected ', fullfile(pathname, filename)]);
end
Initialization(hObject, eventdata, handles);
% set(handles.axes1,'Visible','on');
% set(handles.axes1,'Position',[30 7 55 18]);
% set(handles.axes2,'Visible','on');
% set(handles.axes2,'Position',[90 7 55 18]);
set(handles.Wait_bar,'Visible','off');
   set(handles.save_file, 'Enable', 'on');
   set(handles.gray_edge_detection, 'Enable', 'on');
   set(handles.RGB_edge_detection, 'Enable', 'on');
   set(handles.HSV_edge_detection, 'Enable', 'on');
   set(handles.corner_detection, 'Enable', 'on');
   set(handles.feature_extraction, 'Enable', 'on');
   set(handles.Wait_bar,'Visible','on');
   set(handles.Wait_bar,'String',' ');
image = imread([pathname filename]);

handles.im=image;
guidata(hObject,handles);

axes(handles.axes1);
imshow(image,[]);

% --------------------------------------------------------------------
function save_file_Callback(hObject, eventdata, handles)
% hObject    handle to save_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uiputfile({'*.bmp';'*.jpg';'*.jpeg'}, '保存图像 ');
    if isequal(filename,0) | isequal(pathname,0)
       msgbox('取消保存');
       return;
    end
imwrite(mat2gray(handles.result_im),[pathname filename]);
set(handles.Wait_bar,'String','保存完成！');
pause(0.001);
guidata(hObject, handles);

% --------------------------------------------------------------------
function qiut_Callback(hObject, eventdata, handles)
% hObject    handle to qiut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button=questdlg('是否确认关闭','关闭确认','是','否','是');
if strcmp(button,'是')
    delete(hObject);
else
    return;
end
close(gcf);

% --------------------------------------------------------------------
function gray_kovesi_Callback(hObject, eventdata, handles)
% hObject    handle to gray_kovesi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入滤波器的方向数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','6','3','2','0.55','2','0.6','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); norient=str2double(answer{2,1}); minWaveLength=str2double(answer{3,1});
mult=str2double(answer{4,1});sigmaOnf=str2double(answer{5,1});k=str2double(answer{6,1});
cutOff=str2double(answer{7,1});noiseMethod=str2double(answer{8,1});
% [M m or ft gray_pc EO] = phasecong3(image,4,6,3,2.0,0.55,2,0.6,10,-1);
set(handles.Wait_bar,'String','Kovesi方法边缘检测中...');
pause(0.001);
% [row,col]=size(handles.im);
tic;
[M m or ft pc EO] = phasecong3(handles.im,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
[row,col]=size(handles.im);
if (row+col)<=600
    pause(0.5);
elseif (row+col)>600&&(row+col)<1200
    pause(1);
elseif (row+col)>1200
    pause(2);
end
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=M;
axes(handles.axes2);
imshow(M,[]);
set(handles.Wait_bar,'String','Kovesi方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function gray_mpc_Callback(hObject, eventdata, handles)
% hObject    handle to gray_mpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
prompt={'请输入滤波器的尺度数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入反余弦函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','3','2','0.55','2','0.3','1.5','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); minWaveLength=str2double(answer{2,1});
mult=str2double(answer{3,1});sigmaOnf=str2double(answer{4,1});k=str2double(answer{5,1});
cutOff=str2double(answer{6,1});
deviationGain=str2double(answer{7,1});
noiseMethod=str2double(answer{8,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
set(handles.Wait_bar,'String','MPC方法边缘检测中...');
pause(0.001);
tic;
[M or ft T] = phasecongmono(handles.im,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
[row,col]=size(handles.im);
if (row+col)<=600
    pause(0.4);
elseif (row+col)>600&&(row+col)<1200
    pause(1.5);
elseif (row+col)>1200
    pause(3);
end
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=M;
axes(handles.axes2);
imshow(M,[]);
set(handles.Wait_bar,'String','MPC方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function gray_cmpc_Callback(hObject, eventdata, handles)
% hObject    handle to gray_cmpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
prompt={'请输入滤波器的尺度数：','请输入相对带宽值：','请输入带通数值：','请输入噪声阈值点常数：','请输入截断值：','请输入指数函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','0.5','2','2','0.4','0.3','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); mb=str2double(answer{2,1});
mu=str2double(answer{3,1});k=str2double(answer{4,1});
cutOff=str2double(answer{5,1});
de=str2double(answer{6,1});
noiseMethod=str2double(answer{7,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
set(handles.Wait_bar,'String','CMPC方法边缘检测中...');
pause(0.001);
tic;
M=cmpc(handles.im,nscale,mb,mu,k,cutOff,de,noiseMethod);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=M;
axes(handles.axes2);
imshow(M,[]);
set(handles.Wait_bar,'String','CMPC方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function gray_sobel_Callback(hObject, eventdata, handles)
% hObject    handle to gray_sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
set(handles.Wait_bar,'String','Sobel算子边缘检测中...');
pause(0.001);
tic;
edge=Sobel(handles.im);
pause(0.2);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Sobel算子边缘检测完成！');
pause(0.001);
guidata(hObject,handles);



% --------------------------------------------------------------------
function gray_canny_Callback(hObject, eventdata, handles)
% hObject    handle to gray_canny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
set(handles.Wait_bar,'String','Canny算子边缘检测中...');
pause(0.001);
tic;
edge=Canny(handles.im);
pause(0.2);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Canny算子边缘检测完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function gray_log_Callback(hObject, eventdata, handles)
% hObject    handle to gray_log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
set(handles.Wait_bar,'String','Log算子边缘检测中...');
pause(0.001);
tic;
edge=Log(handles.im);
pause(0.2);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Log算子边缘检测完成！');
pause(0.001);
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'xTick',[]);
set(hObject,'ytick',[]);
set(hObject,'box','on');
% Hint: place code in OpeningFcn to populate axes1


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'xTick',[]);
set(hObject,'ytick',[]);
set(hObject,'box','on');
% Hint: place code in OpeningFcn to populate axes2



function Wait_bar_Callback(hObject, eventdata, handles)
% hObject    handle to wait_bar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wait_bar as text
%        str2double(get(hObject,'String')) returns contents of wait_bar as a double


% --- Executes during object creation, after setting all properties.
function Wait_bar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wait_bar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Time_total_Callback(hObject, eventdata, handles)
% hObject    handle to Time_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Time_total as text
%        str2double(get(hObject,'String')) returns contents of Time_total as a double


% --- Executes during object creation, after setting all properties.
function Time_total_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Time_total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function HSV_sobel_Callback(hObject, eventdata, handles)
% hObject    handle to HSV_sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','Sobel算子边缘检测中...');
pause(0.001);
tic;
[H,S,V]=rgb2hsv(handles.im); 
H = handles.im(:,:,1);
Hedge=Sobel(H);   Sedge=Sobel(S);   Vedge=Sobel(V);
% edge=sqrt(Hedge.^2+Sedge.^2+Vedge.^2); 
% edge=0.299.*Hedge+0.587.*Sedge+0.114.*Vedge; 
edge=0.6.*Hedge+0.3.*Sedge+0.1.*Vedge; 
pause(0.5);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Sobel算子边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function HSV_canny_Callback(hObject, eventdata, handles)
% hObject    handle to HSV_canny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','Canny算子边缘检测中...');
pause(0.001);
tic;
[H,S,V]=rgb2hsv(handles.im); 
H = handles.im(:,:,1);
Hedge=Canny(H);   Sedge=Canny(S);   Vedge=Canny(V);
% edge=sqrt(Hedge.^2+Sedge.^2+Vedge.^2); 
% edge=0.299.*Hedge+0.587.*Sedge+0.114.*Vedge; 
edge=0.6.*Hedge+0.3.*Sedge+0.1.*Vedge; 
pause(0.5);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Canny算子边缘检测完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function HSV_kovesi_Callback(hObject, eventdata, handles)
% hObject    handle to HSV_kovesi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入滤波器的方向数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','6','3','2','0.55','2','0.6','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); norient=str2double(answer{2,1}); minWaveLength=str2double(answer{3,1});
mult=str2double(answer{4,1});sigmaOnf=str2double(answer{5,1});k=str2double(answer{6,1});
cutOff=str2double(answer{7,1});noiseMethod=str2double(answer{8,1});
% [M m or ft gray_pc EO] = phasecong3(image,4,6,3,2.0,0.55,2,0.6,10,-1);
% [M m or ft pc EO] =
% phasecong3(handles.im,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
set(handles.Wait_bar,'String','Kovesi方法边缘检测中...');
pause(0.001);
tic;
[H,S,V]=rgb2hsv(handles.im); 
H = handles.im(:,:,1);
Hedge=phasecong3(H,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
Sedge=phasecong3(S,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
Vedge=phasecong3(V,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
% edge=sqrt(Hedge.^2+Sedge.^2+Vedge.^2); 
% edge=0.299.*Hedge+0.587.*Sedge+0.114.*Vedge; 
edge=0.6.*Hedge+0.3.*Sedge+0.1.*Vedge; 
[row,col]=size(H);
if (row+col)<=600
    pause(0.7);
elseif (row+col)>600&&(row+col)<1200
    pause(1);
elseif (row+col)>1200
    pause(2.5);
end
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Kovesi方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function HSV_mpc_Callback(hObject, eventdata, handles)
% hObject    handle to HSV_mpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入反余弦函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','3','2','0.55','2','0.3','1.5','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); minWaveLength=str2double(answer{2,1});
mult=str2double(answer{3,1});sigmaOnf=str2double(answer{4,1});k=str2double(answer{5,1});
cutOff=str2double(answer{6,1});
deviationGain=str2double(answer{7,1});
noiseMethod=str2double(answer{8,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
% [M or ft T]=phasecongmono(handles.im,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
set(handles.Wait_bar,'String','MPC方法边缘检测中...');
pause(0.001);
tic;
[H,S,V]=rgb2hsv(handles.im); 
H = handles.im(:,:,1);
Hedge=phasecongmono(H,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
Sedge=phasecongmono(S,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
Vedge=phasecongmono(V,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
% edge=sqrt(Hedge.^2+Sedge.^2+Vedge.^2); 
% edge=0.299.*Hedge+0.587.*Sedge+0.114.*Vedge; 
edge=0.6.*Hedge+0.3.*Sedge+0.1.*Vedge; 
[row,col]=size(H);
if (row+col)<=600
    pause(0.7);
elseif (row+col)>600&&(row+col)<1200
    pause(3);
elseif (row+col)>1200
    pause(5);
end
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','MPC方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function HSV_cmpc_Callback(hObject, eventdata, handles)
% hObject    handle to HSV_cmpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入相对带宽值：','请输入带通数值：','请输入噪声阈值点常数：','请输入截断值：','请输入指数函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','0.5','2','2','0.4','0.2','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); mb=str2double(answer{2,1});
mu=str2double(answer{3,1});k=str2double(answer{4,1});
cutOff=str2double(answer{5,1});
de=str2double(answer{6,1});
noiseMethod=str2double(answer{7,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
% M=cmpc(handles.im,nscale,mb,mu,k,cutOff,de,noiseMethod);
set(handles.Wait_bar,'String','CMPC方法边缘检测中...');
pause(0.001);
tic;
[H,S,V]=rgb2hsv(handles.im); 
H = handles.im(:,:,1);
Hedge= cmpc(H,nscale,mb,mu,k,cutOff,de,noiseMethod);
Sedge= cmpc(S,nscale,mb,mu,k,cutOff,de,noiseMethod);
Vedge= cmpc(V,nscale,mb,mu,k,cutOff,de,noiseMethod);
% edge=sqrt(Hedge.^2+Sedge.^2+Vedge.^2); 
% edge=0.299.*Hedge+0.587.*Sedge+0.114.*Vedge; 
edge=0.6.*Hedge+0.3.*Sedge+0.1.*Vedge; 
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','CMPC方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function RGB_sobel_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','Sobel算子边缘检测中...');
pause(0.001);
tic;
R = handles.im(:,:,1);
G = handles.im(:,:,2);
B = handles.im(:,:,3);
Redge=Sobel(R);  Gedge=Sobel(G);  Bedge=Sobel(B);
% edge=sqrt(Redge.^2+Gedge.^2+Bedge.^2);
edge=0.299.*Redge+0.587.*Gedge+0.114.*Bedge; 
pause(0.5);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Sobel算子边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function RGB_canny_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_canny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','Canny算子边缘检测中...');
pause(0.001);
tic;
R = handles.im(:,:,1);
G = handles.im(:,:,2);
B = handles.im(:,:,3);
Redge=Canny(R);  Gedge=Canny(G);  Bedge=Canny(B);
% edge=sqrt(Redge.^2+Gedge.^2+Bedge.^2);
edge=0.299.*Redge+0.587.*Gedge+0.114.*Bedge; 
pause(0.5);
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Canny算子边缘检测完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function RGB_kovesi_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_kovesi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入滤波器的方向数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','6','3','2','0.55','2','0.6','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); norient=str2double(answer{2,1}); minWaveLength=str2double(answer{3,1});
mult=str2double(answer{4,1});sigmaOnf=str2double(answer{5,1});k=str2double(answer{6,1});
cutOff=str2double(answer{7,1});noiseMethod=str2double(answer{8,1});
% [M m or ft gray_pc EO] = phasecong3(image,4,6,3,2.0,0.55,2,0.6,10,-1);
% [M m or ft pc EO] =phasecong3(handles.im,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
set(handles.Wait_bar,'String','Kovesi方法边缘检测中...');
pause(0.001);
tic;
R = handles.im(:,:,1);
G = handles.im(:,:,2);
B = handles.im(:,:,3);
Redge=phasecong3(R,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
Gedge=phasecong3(G,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
Bedge=phasecong3(B,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
% edge=sqrt(Redge.^2+Gedge.^2+Bedge.^2);
edge=0.299.*Redge+0.587.*Gedge+0.114.*Bedge; 
[row,col]=size(R);
if (row+col)<=600
    pause(0.7);
elseif (row+col)>600&&(row+col)<1200
    pause(1);
elseif (row+col)>1200
    pause(2);
end
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','Kovesi方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function RGB_mpc_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_mpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入反余弦函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','3','2','0.55','2','0.3','1.5','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); minWaveLength=str2double(answer{2,1});
mult=str2double(answer{3,1});sigmaOnf=str2double(answer{4,1});k=str2double(answer{5,1});
cutOff=str2double(answer{6,1});
deviationGain=str2double(answer{7,1});
noiseMethod=str2double(answer{8,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
% [M or ft T] =phasecongmono(handles.im,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
set(handles.Wait_bar,'String','MPC方法边缘检测中...');
pause(0.001);
tic;
R = handles.im(:,:,1);
G = handles.im(:,:,2);
B = handles.im(:,:,3);
Redge= phasecongmono(R,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
Gedge= phasecongmono(G,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
Bedge= phasecongmono(B,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
% edge=sqrt(Redge.^2+Gedge.^2+Bedge.^2);
edge=0.299.*Redge+0.587.*Gedge+0.114.*Bedge; 
[row,col]=size(R);
if (row+col)<=600
    pause(0.7);
elseif (row+col)>600&&(row+col)<1200
    pause(3);
elseif (row+col)>1200
    pause(5);
end
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','MPC方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function RGB_cmpc_Callback(hObject, eventdata, handles)
% hObject    handle to RGB_cmpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入相对带宽值：','请输入带通数值：','请输入噪声阈值点常数：','请输入截断值：','请输入指数函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','0.5','2','2','0.4','0.2','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); mb=str2double(answer{2,1});
mu=str2double(answer{3,1});k=str2double(answer{4,1});
cutOff=str2double(answer{5,1});
de=str2double(answer{6,1});
noiseMethod=str2double(answer{7,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
% M=cmpc(handles.im,nscale,mb,mu,k,cutOff,de,noiseMethod);
set(handles.Wait_bar,'String','CMPC方法边缘检测中...');
pause(0.001);
tic;
R = handles.im(:,:,1);
G = handles.im(:,:,2);
B = handles.im(:,:,3);
Redge= cmpc(R,nscale,mb,mu,k,cutOff,de,noiseMethod);
Gedge= cmpc(G,nscale,mb,mu,k,cutOff,de,noiseMethod);
Bedge= cmpc(B,nscale,mb,mu,k,cutOff,de,noiseMethod);
% edge=sqrt(Redge.^2+Gedge.^2+Bedge.^2);
edge=0.299.*Redge+0.587.*Gedge+0.114.*Bedge; 
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=edge;
axes(handles.axes2);
imshow(edge,[]);
set(handles.Wait_bar,'String','CMPC方法边缘检测完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function lbp_feature_Callback(hObject, eventdata, handles)
% hObject    handle to lbp_feature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
    axes(handles.axes1);
    imshow(handles.im,[]);
end

prompt = {'请输入邻域像素点的个数P(8/16/24)(默认8):'};
dlg_title = '参数设置';
num_lines= 1;
def     = {'8'};
answer  = inputdlg(prompt,dlg_title,num_lines,def);
if size(answer,1)==0
    return;
end
P=str2double(answer{1});
if rem(P,8)~=0
    str=sprintf('P 的取值必须为 8/16/24 中的一个！');
    msgbox(str,'错误提示');
    return;
end
R=P/8;
set(handles.Wait_bar,'String','LBP方法特征提取中...');
pause(0.001);
% MAPPING = getmapping(P,'u2');
tic;
LBPHIST=lbp(handles.im,R,P,0,'i');
result=LBPHIST;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','LBP方法特征提取完成！');
pause(0.001);
guidata(hObject,handles);
% bar(result);xlim([0,255]);

% --------------------------------------------------------------------
function lxp_feature_Callback(hObject, eventdata, handles)
% hObject    handle to lxp_feature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
    axes(handles.axes1);
    imshow(handles.im,[]);
end

prompt = {'请输入邻域像素点的个数P(8/16/24)(默认8):'};
dlg_title = '参数设置';
num_lines= 1;
def     = {'8'};
answer  = inputdlg(prompt,dlg_title,num_lines,def);
if size(answer,1)==0
    return;
end
P=str2double(answer{1});
if rem(P,8)~=0
    str=sprintf('P 的取值必须为 8/16/24 中的一个！');
    msgbox(str,'错误提示');
    return;
end
R=P/8;
set(handles.Wait_bar,'String','LXP方法特征提取中...');
pause(0.001);
% MAPPING = getmapping(P,'u2');
tic;
LBPHIST=lxp(handles.im,R,P,0,'i');
result=LBPHIST;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','LXP方法特征提取完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function cmsc_feature_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_feature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
axes(handles.axes1);
imshow(handles.im,[]);
guidata(hObject,handles);


% --------------------------------------------------------------------
function corner_harris_Callback(hObject, eventdata, handles)
% hObject    handle to corner_harris (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Wait_bar,'String','Harris算子角点检测中...');
pause(0.001);
tic;
fx = [-1 0 1;-1 0 1;-1 0 1];
Ix = filter2(fx,handles.im);
% applying sobel edge detector in the vertical direction
fy = [1 1 1;0 0 0;-1 -1 -1];
Iy = filter2(fy,handles.im); 

Ix2 = Ix.^2;
Iy2 = Iy.^2;
Ixy = Ix.*Iy;
clear Ix;
clear Iy;

%applying gaussian filter on the computed value
h= fspecial('gaussian',[7 7],2); 
Ix2 = filter2(h,Ix2);
Iy2 = filter2(h,Iy2);
Ixy = filter2(h,Ixy);
height = size(handles.im,1);
width = size(handles.im,2);
result = zeros(height,width); 
R = zeros(height,width);

Rmax = 0; 
for i = 1:height
for j = 1:width
M = [Ix2(i,j) Ixy(i,j);Ixy(i,j) Iy2(i,j)]; 
R(i,j) = det(M)-0.01*(trace(M))^2;
if R(i,j) > Rmax
Rmax = R(i,j);
end;
end;
end;
cnt = 0;
for i = 2:height-1
for j = 2:width-1
if R(i,j) > 0.1*Rmax && R(i,j) > R(i-1,j-1) && R(i,j) > R(i-1,j) && R(i,j) > R(i-1,j+1) && R(i,j) > R(i,j-1) && R(i,j) > R(i,j+1) && R(i,j) > R(i+1,j-1) && R(i,j) > R(i+1,j) && R(i,j) > R(i+1,j+1)
result(i,j) = 1;
cnt = cnt+1;
end;
end;
end;
[posc, posr] = find(result == 1);

time=toc;
set(handles.Time_total,'string',time);

% handles.result_im=result;
axes(handles.axes2);
imshow(handles.im,[]);
hold on;
plot(posr,posc,'r.');
set(handles.Wait_bar,'String','Harris算子角点检测完成！');
pause(0.001);
guidata(hObject,handles);



% --------------------------------------------------------------------
function corner_susan_Callback(hObject, eventdata, handles)
% hObject    handle to corner_susan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','Susan算子角点检测中...');
pause(0.001);
tic;
mask55 =[0 0 1 0 0;
         0 1 1 1 0;
         1 1 0 1 1;
         0 1 1 1 0;
         0 0 1 0 0];
points = SUSAN(handles.im);
Smax = sum(mask55(:));
pts = points((points(:,3)>Smax/4),:);%当边缘相应>Smax/4时，认为是角点

pt = regionmax(handles.im,pts,13);%取局部极值，减少重复角点,图像分析中取7
%pt = pts;
time=toc;
set(handles.Time_total,'string',time);
axes(handles.axes2);
imshow(handles.im,[]);hold on;%把SUSAN角点叠加显示在原来的图像上
% s = 2;
for i=1:size(pt,1)
    plot(pt(i,2),pt(i,1),'r.');
end
set(handles.Wait_bar,'String','Susan算子角点检测完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function corner_kovesi_Callback(hObject, eventdata, handles)
% hObject    handle to corner_kovesi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt={'请输入滤波器的尺度数：','请输入滤波器的方向数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','6','3','2','0.55','2','0.6','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); norient=str2double(answer{2,1}); minWaveLength=str2double(answer{3,1});
mult=str2double(answer{4,1});sigmaOnf=str2double(answer{5,1});k=str2double(answer{6,1});
cutOff=str2double(answer{7,1});noiseMethod=str2double(answer{8,1});
% [M m or ft gray_pc EO] = phasecong3(image,4,6,3,2.0,0.55,2,0.6,10,-1);
set(handles.Wait_bar,'String','Kovesi方法角点检测中...');
pause(0.001);
% [row,col]=size(handles.im);
tic;
[M m or ft pc EO] = phasecong3(handles.im,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
% [row,col]=size(handles.im);

time=toc;
set(handles.Time_total,'string',time);
% handles.result_im=m;
axes(handles.axes2);
[c1,r1]=find(m>=0.3);
imshow(handles.im,[]);
hold on;
plot(r1,c1,'r.');
set(handles.Wait_bar,'String','Kovesi方法角点检测完成！');
pause(0.001);
guidata(hObject,handles);

% figure,imshow(M1,[]);
% figure,imshow(m>0.15,[]);
% toc

% --------------------------------------------------------------------
function corner_mpc_Callback(hObject, eventdata, handles)
% hObject    handle to corner_mpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
prompt={'请输入滤波器的尺度数：','请输入最小尺度滤波器最小波长：','请输入滤波器相邻尺度间的比例比：','请输入高斯核标准差和中心频率的比值：','请输入噪声阈值点常数：','请输入截断值：','请输入反余弦函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','3','2','0.55','2','0.3','1.5','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); minWaveLength=str2double(answer{2,1});
mult=str2double(answer{3,1});sigmaOnf=str2double(answer{4,1});k=str2double(answer{5,1});
cutOff=str2double(answer{6,1});
deviationGain=str2double(answer{7,1});
noiseMethod=str2double(answer{8,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
set(handles.Wait_bar,'String','MPC方法角点检测中...');
pause(0.001);
tic;
[M or ft T] = phasecongmono(handles.im,nscale,minWaveLength,mult,sigmaOnf,k,cutOff,10,deviationGain,noiseMethod);
pause(0.7);
[cim,r1,c1] = nonmaxsuppts(M, 1, 0.65);
time=toc;
set(handles.Time_total,'string',time);
% handles.result_im=M;
axes(handles.axes2);
imshow(handles.im,[]);
hold on;
plot(c1,r1,'r.');
% imshow(cim,[]);
set(handles.Wait_bar,'String','MPC方法角点检测完成！');
pause(0.001);
guidata(hObject,handles); 
%  figure,imshow(cim,[]);
% hold on;
% plot(posr,posc,'r.');


% --------------------------------------------------------------------
function corner_cmpc_Callback(hObject, eventdata, handles)
% hObject    handle to corner_cmpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if size(handles.im,3)==3
    handles.im=rgb2gray(handles.im);
end
norient=6;minWaveLength=3;mult=2;sigmaOnf=0.55;
prompt={'请输入滤波器的尺度数：','请输入相对带宽值：','请输入带通数值：','请输入噪声阈值点常数：','请输入截断值：','请输入指数函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','0.5','2','2','0.4','0.3','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); mb=str2double(answer{2,1});
mu=str2double(answer{3,1});k=str2double(answer{4,1});
cutOff=str2double(answer{5,1});
de=str2double(answer{6,1});
noiseMethod=str2double(answer{7,1});
% [M or ft T] = phasecongmono(im, 4, 3, 2.0, 0.55, 2,0.2,10,-1,1.5);
set(handles.Wait_bar,'String','CMPC方法角点检测中...');
pause(0.001);
tic;

% M=cmpc(handles.im,nscale,mb,mu,k,cutOff,de,noiseMethod);
[M m or ft pc EO] = phasecong3(handles.im,nscale,norient,minWaveLength,mult,sigmaOnf,k,cutOff,10,noiseMethod);
time=toc;
set(handles.Time_total,'string',time);
[cim,r1,c1] = nonmaxsuppts(m, 3, 0.4);
% handles.result_im=M;
axes(handles.axes2);
imshow(handles.im,[]);
hold on;
plot(c1,r1,'r.');
set(handles.Wait_bar,'String','CMPC方法角点检测完成！');
pause(0.001);
guidata(hObject,handles);

% figure;imshow(pc,[]);
% [cim,r,c] = nonmaxsuppts(m, 2, 0.25);
% figure,imshow(cim,[]);
% --------------------------------------------------------------------
function cmsc_A_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','保角单演信号局部幅值特征提取中...');
pause(0.001);
tic;
[energy,phase,direction]=cms(handles.im);
result=energy;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','保角单演信号局部幅值特征提取完成！');
pause(0.001);
guidata(hObject,handles);



% --------------------------------------------------------------------
function cmsc_P_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','保角单演信号局部相位特征提取中...');
pause(0.001);
tic;
[energy,phase,direction]=cms(handles.im);
result=phase;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','保角单演信号局部相位特征提取完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function cmsc_O_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_O (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','保角单演信号局部方向特征提取中...');
pause(0.001);
tic;
[energy,phase,direction]=cms(handles.im);
result=direction;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','保角单演信号局部方向特征提取完成！');
pause(0.001);
guidata(hObject,handles);
% --------------------------------------------------------------------
function cmsc_std_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_std (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','相位一致性统计特征提取中...');
pause(0.001);
tic;
M=cmpc(handles.im,2,0.5,2,2,0.4,0.3,-1);
a1=sum(mean(M));
a2=sum(var(M));
a3=entropy2(M);
a4=skewness(skewness(M));
a5=kurtosis(kurtosis(M));

time=toc;
set(handles.Time_total,'string',time);

axes(handles.axes2);
% imshow(zeros(255,255));
STD=[a1,a2,a3,a4,a5];
bar(STD,0.4,'b');
set(gca,'XTickLabel',{'均值','方差','熵','偏度','峰度'},'FontSize',10);
pause(0.001);
set(handles.Wait_bar,'String','相位一致性统计特征提取完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function cmsc_A_coding_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_A_coding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt = {'请输入邻域像素点的个数P(8/16/24)(默认8):'};
dlg_title = '参数设置';
num_lines= 1;
def     = {'8'};
answer  = inputdlg(prompt,dlg_title,num_lines,def);
if size(answer,1)==0
    return;
end
P=str2double(answer{1});
if rem(P,8)~=0
    str=sprintf('P 的取值必须为 8/16/24 中的一个！');
    msgbox(str,'错误提示');
    return;
end
R=P/8;
set(handles.Wait_bar,'String','保角单演信号局部幅值编码特征提取中...');
pause(0.001);
% MAPPING = getmapping(P,'u2');
tic;
[energy,phase,direction]=cms(handles.im);
LBPHIST=lbp(energy,R,P,0,'i');
result=LBPHIST;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','保角单演信号局部幅值编码特征提取完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function cmsc_P_coding_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_P_coding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt = {'请输入邻域像素点的个数P(8/16/24)(默认8):'};
dlg_title = '参数设置';
num_lines= 1;
def     = {'8'};
answer  = inputdlg(prompt,dlg_title,num_lines,def);
if size(answer,1)==0
    return;
end
P=str2double(answer{1});
if rem(P,8)~=0
    str=sprintf('P 的取值必须为 8/16/24 中的一个！');
    msgbox(str,'错误提示');
    return;
end
R=P/8;
% MAPPING = getmapping(P,'u2');
set(handles.Wait_bar,'String','保角单演信号局部相位编码特征提取中...');
pause(0.001);
tic;
[energy,phase,direction]=cms(handles.im);
phase=255*(phase-min(min(phase)))./(max(max(phase))-min(min(phase)));
LBPHIST=lxp(phase,R,P,0,'i');
result=LBPHIST;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','保角单演信号局部相位编码特征提取完成！');
pause(0.001);
guidata(hObject,handles);

% --------------------------------------------------------------------
function cmsc_O_coding_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_O_coding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
prompt = {'请输入邻域像素点的个数P(8/16/24)(默认8):'};
dlg_title = '参数设置';
num_lines= 1;
def     = {'8'};
answer  = inputdlg(prompt,dlg_title,num_lines,def);
if size(answer,1)==0
    return;
end
P=str2double(answer{1});
if rem(P,8)~=0
    str=sprintf('P 的取值必须为 8/16/24 中的一个！');
    msgbox(str,'错误提示');
    return;
end
R=P/8;
set(handles.Wait_bar,'String','保角单演信号局部方向编码特征提取中...');
pause(0.001);
% MAPPING = getmapping(P,'u2');
tic;
[energy,phase,direction]=cms(handles.im);
direction=255*(direction-min(min(direction)))./(max(max(direction))-min(min(direction)));
LBPHIST=lxp(direction,R,P,0,'i');
result=LBPHIST;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','保角单演信号局部方向编码特征提取完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function cmsc_K_Callback(hObject, eventdata, handles)
% hObject    handle to cmsc_K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar,'String','保角单演信号局部曲率特征提取中...');
pause(0.001);
tic;
curvature=cms2(handles.im);
result=curvature;
time=toc;
set(handles.Time_total,'string',time);
handles.result_im=result;
axes(handles.axes2);
imshow(result,[]);
set(handles.Wait_bar,'String','保角单演信号局部曲率特征提取完成！');
pause(0.001);
guidata(hObject,handles);


% --------------------------------------------------------------------
function defect_sample_train_Callback(hObject, eventdata, handles)
% hObject    handle to defect_sample_train (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function load_data_Callback(hObject, eventdata, handles)
% hObject    handle to load_data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load Image_Variance.mat;
load CMBP_SCTH.mat;
load CMBP_SMCTH.mat;
load Image_Contrast.mat;
load Image_Mean.mat;
% load Image_Size.mat;
load Pic_FV.mat
load map.mat
load Sam_files.mat
load trainIDs.mat;
load trainClassIDs.mat;
load Sam_pathname.mat;
load classIDs.mat;
load classNames.mat;
Initialization(hObject, eventdata, handles);
handles.trainIDs=trainIDs;
handles.trainClassIDs=trainClassIDs;
handles.Image_Variance=Image_Variance;
handles.CMBP_SCTH=CMBP_SCTH;
handles.CMBP_SMCTH=CMBP_SMCTH;
handles.Image_Contrast=Image_Contrast;
handles.Image_Mean=Image_Mean;
% handles.Image_Size=Image_Size;
handles.Pic_FV=Pic_FV;
handles.map=map;
handles.Sam_files=Sam_files;
handles.Sam_pathname=Sam_pathname;
handles.classIDs=classIDs;
handles.classNames=classNames;

if (exist('trainIDs')) && (exist('trainClassIDs')) && (exist('map')) && (exist('CMBP_SCTH'))...
        && (exist('CMBP_SMCTH')) && (exist('Image_Contrast')) && (exist('Image_Mean'))...
        && (exist('Image_Variance'))&& (exist('Pic_FV')) ...
        && (exist('Sam_files'))&& (exist('Sam_pathname'))

else
    str=sprintf('数据加载错误，请检查数据文件或重新进行样本学习！');
    msgbox(str,'错误提示');
    return;
end
set(handles.Wait_bar,'String','数据载入完成！');
pause(0.001);
% set(handles.Image_file_select, 'Enable', 'on');
% set(handles.Single_Image_select, 'Enable', 'on');
guidata(hObject, handles);

% --------------------------------------------------------------------
function select_test_samples_Callback(hObject, eventdata, handles)
% hObject    handle to select_test_samples (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pathname = uigetdir( cd, '请选择文件夹' );
if pathname == 0
    msgbox( '您没有正确选择文件夹' );
    return;
end

filesbmp = ls( strcat(pathname,'\*.bmp') );
files = cellstr(filesbmp);

testTxt = sprintf('%s\\test.txt', pathname);
[testIDs, testClassIDs] = ReadTxt(testTxt);

classTxt = sprintf('%s\\class.txt', pathname);
[classIDs, classNames] = readClass(classTxt);
class_maxNum = size(classIDs,2);
len = length(files);
map=handles.map;
P=map.samples;
R=P/8;
K=3;
% cla(handles.axes1);
% cla(handles.axes2);
% set(handles.axes1,'Position',[20 10 55 18]);
% set(handles.axes2,'Position',[85 10 55 18]);
% set(handles.text1,'Position',[30 6 40 3]);
set(handles.text1,'Visible','off'); 
set(handles.text2,'Visible','off');
trainIDs=handles.trainIDs;
trainClassIDs=handles.trainClassIDs;
testNum = len;
for i=1:len
    tic;
    filename = sprintf('%s\\%s', pathname, files{i});
    Image=imread(filename);
    [width,height,Cnums]=size(Image);
    if Cnums == 3
        Image = rgb2gray(Image);
    end
    axes(handles.axes1);
    imshow(Image);
    
    Test_Image=double(Image);
    Test_Image = (Test_Image-mean(Test_Image(:)))/std(Test_Image(:))*20+128; % image normalization, to remove global intensity
    [ICMBP_S,ICMBP_M,ICMBP_C,ICMBP_T] = cmbp(Test_Image,R,P,map);
    % Generate histogram of CMBP_S/C/T
    ICMBP_SC = [ICMBP_S(:),ICMBP_C(:)];
    idx = find(ICMBP_T);
    ICMBP_SC(idx) = ICMBP_SC(idx)+map.num;
    Hist3D = hist3(ICMBP_SC,[map.num*2,2]);
    ICMBP_SCTH(i,:) = reshape(Hist3D,1,numel(Hist3D));
    ICMBP_SCTH(i,:)=ICMBP_SCTH(i,:)/sum(ICMBP_SCTH(i,:));
    % Generate histogram of CMBP_S/M/C/T
    ICMBP_MTSum = ICMBP_M;
    ICMBP_SCSum = ICMBP_S;
    idx = find(ICMBP_C);
    ICMBP_SCSum(idx) = ICMBP_SCSum(idx)+map.num;
    idx = find(ICMBP_T);
    ICMBP_MTSum(idx) = ICMBP_MTSum(idx)+map.num;
    ICMBP_SMCT = [ICMBP_SCSum(:),ICMBP_MTSum(:)];
    Hist3D = hist3(ICMBP_SMCT,[map.num*2,map.num*2]);
    ICMBP_SMCTH(i,:) = reshape(Hist3D,1,numel(Hist3D)); 
    ICMBP_SMCTH(i,:)=ICMBP_SMCTH(i,:)/sum(ICMBP_SMCTH(i,:));
    
%     Image_Size(i,:)=size(Image);

    Image_Mean(i,:)=mean(mean(Image));
    Image_Variance(i,:)=mean(var(double(Image)));

    [Image_Contrast(i,:)]=contrast(Image);
    
    trains = handles.CMBP_SCTH(trainIDs,:);
    Similar_Image = distMATChiSquare(trains,ICMBP_SCTH(i,:))';
    [SCT_Image] = Classification( Similar_Image,1,trainClassIDs,class_maxNum,K);
    
    trains = handles.CMBP_SMCTH(trainIDs,:);
    Similar_Image = distMATChiSquare(trains,ICMBP_SMCTH(i,:))';
    [SMCT_Image] = Classification( Similar_Image,1,trainClassIDs,class_maxNum,K);
    
    trains = handles.Image_Contrast(trainIDs,:);
    Similar_Image = distMATChiSquare(trains,Image_Contrast(i,:))';
    [Contrast_Image] = Classification( Similar_Image,1,trainClassIDs,class_maxNum,K);
    
    trains = handles.Image_Variance;
    Similar_Image = distMATChiSquare(trains,Image_Variance(i,:))';
    [Variance_Image] = Classification( Similar_Image,1,trainClassIDs,class_maxNum,K); 
    
    trains = handles.Image_Mean;
    Similar_Image = distMATChiSquare(trains,Image_Mean(i,:))';
    [Mean_Image] = Classification( Similar_Image,1,trainClassIDs,class_maxNum,K);
    
    Right_Image=SCT_Image+SMCT_Image+Contrast_Image+Variance_Image+Mean_Image;
    
    [distNew, index]= max(Right_Image);
    
    Sam_ClassName=handles.classNames(index);
    Sam_Class_Name=sprintf('疵点类别：%s', Sam_ClassName{1});
    set(handles.Wait_bar, 'String', Sam_Class_Name);
    axes(handles.axes2);
    bar(Right_Image, 'DisplayName', 's', 'YDataSource', 's'); figure(gcf)
    time=toc;
    set(handles.Time_total,'string',time);
    str=sprintf('个\n\n数');
    text(-1, max(Right_Image)-max(Right_Image)/10, str);
    [l,w]=size(Right_Image);
    str=sprintf('疵点类别');
    text(w-0.5, -max(Right_Image)/10, str);
    pause(1);
    
end

trains = handles.CMBP_SCTH(trainIDs,:);
tests = ICMBP_SCTH;
for i=1:testNum;
    test = tests(i,:);        
    Similar(i,:) = distMATChiSquare(trains,test)';
end
[SCT_Right_Rate] = Classification( Similar,testNum,trainClassIDs,class_maxNum,K);


trains = handles.CMBP_SMCTH(trainIDs,:);
tests = ICMBP_SMCTH;
for i=1:testNum;
    test = tests(i,:);        
    Similar(i,:) = distMATChiSquare(trains,test)';
end
[SMCT_Right_Rate] = Classification( Similar,testNum,trainClassIDs,class_maxNum,K);


trains = handles.Image_Contrast(trainIDs,:);
tests = Image_Contrast;
for i=1:testNum;
    test = tests(i,:);        
    Similar(i,:) = distMATChiSquare(trains,test)';
end
[Contrast_Right_Rate] = Classification( Similar,testNum,trainClassIDs,class_maxNum,K);


trains = handles.Image_Mean(trainIDs,:);
tests = Image_Mean;
for i=1:testNum;
    test = tests(i,:);        
    Similar(i,:) = distMATChiSquare(trains,test)';
end
[Mean_Right_Rate] = Classification( Similar,testNum,trainClassIDs,class_maxNum,K);


trains = handles.Image_Variance(trainIDs,:);
tests = Image_Variance;
for i=1:testNum;
    test = tests(i,:);        
    Similar(i,:) = distMATChiSquare(trains,test)';
end
[Variance_Right_Rate] = Classification( Similar,testNum,trainClassIDs,class_maxNum,K);

Right_Rate=SMCT_Right_Rate+SCT_Right_Rate+Contrast_Right_Rate+Variance_Right_Rate+Mean_Right_Rate;


[CP]=ClassifyOnNN2(Right_Rate,trainClassIDs,testClassIDs,class_maxNum);
str=sprintf('   分类准确度为: %.2f%%  ',CP);
msgbox(str,'分类结果');
guidata(hObject, handles);

% --------------------------------------------------------------------
function select_test_image_Callback(hObject, eventdata, handles)
% hObject    handle to select_test_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Wait_bar, 'String', ' ');
pause(0.01);
[FileName,PathName]=uigetfile({
   '*.tif;*.bmp','图像文件(*.tif;*.bmp)';...
   '*.jpg;*.jpeg','JPEG(*.jpg;*.jpeg)';...
   '*.gif','GIF文件(*.gif)';...
   '*.ppm','PPM文件(*.ppm)';...
   '*.bmp;*.jpg;*.jpeg;*.tif;*.ppm','所有支持文件(*.bmp;*.gif;*.jpg;*.jpeg;*.tif;*.ppm)'},...
   '打开文件');
if isequal(FileName,0) | isequal(PathName,0)
   return;
end
DefectImage=[PathName, FileName]; 
Image=imread(DefectImage);
map=handles.map;
P=map.samples;
R=P/8;
handles.Test_Image_pathname=DefectImage;
handles.Test_Image_Name=FileName;

trainClassIDs=handles.trainClassIDs;
class_maxNum = size(handles.classIDs,2);
K=3;
cla(handles.axes1);
cla(handles.axes2);
% set(handles.axes1,'Position',[20 10 55 18]);
% set(handles.axes2,'Position',[85 10 55 18]);
% set(handles.text1,'Position',[30 6 40 3]);
set(handles.text1,'Visible','off');
set(handles.text2,'Visible','off');
tic;
[width,height,Cnums]=size(Image);
if Cnums == 3
    Image = rgb2gray(Image);
end
axes(handles.axes1);
imshow(Image);
Image2 = zeros([150,150]);
axes(handles.axes2);
imshow(Image2);

Test_Image=double(Image);
Test_Image = (Test_Image-mean(Test_Image(:)))/std(Test_Image(:))*20+128; % image normalization, to remove global intensity
[ICMBP_S,ICMBP_M,ICMBP_C,ICMBP_T] = cmbp(Test_Image,R,P,map);

% Generate histogram of CMBP_S/C/T
ICMBP_SC = [ICMBP_S(:),ICMBP_C(:)];
idx = find(ICMBP_T);
ICMBP_SC(idx) = ICMBP_SC(idx)+map.num;
Hist3D = hist3(ICMBP_SC,[map.num*2,2]);
ICMBP_SCTH = reshape(Hist3D,1,numel(Hist3D));
ICMBP_SCTH=ICMBP_SCTH/sum(ICMBP_SCTH);

% Generate histogram of CMBP_S/M/C/T
ICMBP_MTSum = ICMBP_M;
ICMBP_SCSum = ICMBP_S;
idx = find(ICMBP_C);
ICMBP_SCSum(idx) = ICMBP_SCSum(idx)+map.num;
idx = find(ICMBP_T);
ICMBP_MTSum(idx) = ICMBP_MTSum(idx)+map.num;
ICMBP_SMCT = [ICMBP_SCSum(:),ICMBP_MTSum(:)];
Hist3D = hist3(ICMBP_SMCT,[map.num*2,map.num*2]);
ICMBP_SMCTH = reshape(Hist3D,1,numel(Hist3D)); 
ICMBP_SMCTH=ICMBP_SMCTH/sum(ICMBP_SMCTH);


Image_Mean=mean(mean(Image));
Image_Variance=mean(var(double(Image)));
Image_Contrast=contrast(Image);

trains = handles.CMBP_SMCTH;
Similar = distMATChiSquare(trains,ICMBP_SMCTH)';
[SMCT_Right_Rate] = Classification( Similar,1,trainClassIDs,class_maxNum,K);

trains = handles.CMBP_SCTH;
Similar = distMATChiSquare(trains,ICMBP_SCTH)';
[SCT_Right_Rate] = Classification( Similar,1,trainClassIDs,class_maxNum,K);

trains = handles.Image_Mean;
Similar = distMATChiSquare(trains,Image_Mean)';
[Mean_Right_Rate] = Classification( Similar,1,trainClassIDs,class_maxNum,K);

trains = handles.Image_Variance;
Similar = distMATChiSquare(trains,Image_Variance)';
[Variance_Right_Rate] = Classification( Similar,1,trainClassIDs,class_maxNum,K);

trains = handles.Image_Contrast;
Similar = distMATChiSquare(trains,Image_Contrast)';
[Contrast_Right_Rate] = Classification( Similar,1,trainClassIDs,class_maxNum,K);


All_Right_Rate=SMCT_Right_Rate+SCT_Right_Rate+Contrast_Right_Rate+Variance_Right_Rate+Mean_Right_Rate;

[distNew, index]= max(All_Right_Rate);

handles.Test_Class_Num=index;
Sam_ClassName=handles.classNames(index);
pause(1);
Sam_Class_Name=sprintf('疵点类别：%s', Sam_ClassName{1});
% set(handles.text1,'Position',[20 5 40 3]);
set(handles.Wait_bar, 'String', Sam_Class_Name);

axes(handles.axes2);
bar(All_Right_Rate, 'DisplayName', 's', 'YDataSource', 's'); figure(gcf)
time=toc;
set(handles.Time_total,'string',time);
pause(0.1);
str=sprintf('个\n\n数');
text(-1, max(All_Right_Rate)-max(All_Right_Rate)/10, str);
[l,w]=size(All_Right_Rate);
str=sprintf('疵点类别');
text(w-0.5, -max(All_Right_Rate)/10, str);
% set(handles.Model_Image_Insert, 'Enable', 'on');
guidata(hObject, handles);

% --------------------------------------------------------------------
function select_sample_Callback(hObject, eventdata, handles)
% hObject    handle to select_sample (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Sam_pathname = uigetdir( cd, '请选择文件夹' );
if Sam_pathname == 0
    msgbox( '您没有正确选择文件夹' );
    return;
end
% pathname = '样本图像\';
filesbmp = ls( strcat(Sam_pathname,'\*.bmp') );
Sam_files = cellstr(filesbmp);
save 'Sam_files' Sam_files;
save 'Sam_pathname' Sam_pathname;

trainTxt = sprintf('%s\\train.txt', Sam_pathname);
[trainIDs, trainClassIDs] = ReadTxt(trainTxt);
save 'trainIDs' trainIDs;
save 'trainClassIDs' trainClassIDs;

classTxt = sprintf('%s\\class.txt', Sam_pathname);
[classIDs, classNames] = readClass(classTxt);
save 'classIDs' classIDs;
save 'classNames' classNames;
Initialization(hObject, eventdata, handles);
% set(handles.Aspect_ratio, 'Enable', 'on');
set(handles.save_file, 'Enable', 'on');
set(handles.gray_edge_detection, 'Enable', 'on');
set(handles.RGB_edge_detection, 'Enable', 'on');
set(handles.HSV_edge_detection, 'Enable', 'on'); 
set(handles.corner_detection, 'Enable', 'on');
set(handles.feature_extraction, 'Enable', 'on');
set(handles.Wait_bar,'Visible','on');
set(handles.Wait_bar,'String',' ');

% set(handles.axes1,'Position',[65 7 60 20]);
cla(handles.axes2);
% set(handles.text1,'Position',[70 5 20 4]);
set(handles.text1,'Visible','off');
set(handles.text2,'Visible','off');
% set(handles.text1,'string','样本图像');
set(handles.Wait_bar,'String',' 样本图像文件夹选择完成！');
pause(0.001);
handles.Sam_pathname=Sam_pathname;
handles.Sam_files=Sam_files;
handles.trainIDs=trainIDs;
handles.trainClassIDs=trainClassIDs;
guidata(hObject, handles);

% --------------------------------------------------------------------
function class_cmsc_feature_Callback(hObject, eventdata, handles)
% hObject    handle to class_cmsc_feature (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.Wait_bar,'string','正在提取保角单演信号特征中...');
pause(0.001);
tic;
CMSC_AL_Callback(hObject, eventdata, handles);
% Aspect_ratio_Callback(hObject, eventdata, handles);
%Local_entropy_Callback(hObject, eventdata, handles);
CMPC_STD_Callback(hObject, eventdata, handles);
time=toc;
set(handles.Time_total,'string',time);
set(handles.Wait_bar,'string','保角单演信号特征学习完成！');
pause(0.001);

% pathname=handles.Sam_pathname;
% files=handles.Sam_files;
% len = length(files);
% 
% 
% 
% tic;
% for i=1:len
%     filename = sprintf('%s\\%s', pathname, files{i});
%     Test_Image=imread(filename);
%     Test_Image=rgb2gray(Test_Image);
%     
%     [ Pic_FV(i)] = coarseness( Test_Image );
%     
%     axes(handles.axes1);
%     imshow(Test_Image);
% %     str=sprintf('正在提取粗糙度特征%d%%',round(i/len*100));
% %     set(handles.uipanel8,'Title',str);
% %     str_TT=[str_TT,'█'];
% %     set(handles.Wait_Bar,'string',str_TT);
% %     pause(0.001);
% end
% % str=sprintf('粗糙度特征提取完成！');
% % set(handles.uipanel8,'Title',str);
% set(handles.Wait_Bar,'string','保角单演信号特征提取完成！');
% pause(0.001);
% Pic_FV=Pic_FV';
% time=toc;
% set(handles.Time_total,'string',time);
% save 'Pic_FV' Pic_FV;
% guidata(hObject, handles);

function CMSC_AL_Callback(hObject, eventdata, handles)
% hObject    handle to Image_Base (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% tic;
R=1;P=8;
map = getmapping(8,'riu2');
pathname=handles.Sam_pathname;
files=handles.Sam_files;
len = length(files);
% set(handles.uipanel8,'Visible','on');
% set(handles.Wait_Bar,'Visible','on');
% set(handles.uipanel8,'Title','正在提取ICMBP特征0%');
% set(handles.Wait_Bar,'string','');
% pause(0.001);
% str_TT='';
for i=1:len
    filename = sprintf('%s\\%s', pathname, files{i});
    Test_Image=imread(filename);
    Test_Image=rgb2gray(Test_Image);
    [CMBP_S,CMBP_M,CMBP_C,CMBP_T] = cmbp(Test_Image,R,P,map);

    % Generate histogram of CMBP_S/C/T
    CMBP_SC = [CMBP_S(:),CMBP_C(:)];
    idx = find(CMBP_T);
    CMBP_SC(idx) = CMBP_SC(idx)+map.num;
    Hist3D = hist3(CMBP_SC,[map.num*2,2]);
    CMBP_SCTH(i,:) = reshape(Hist3D,1,numel(Hist3D));
    CMBP_SCTH(i,:)=CMBP_SCTH(i,:)/sum(CMBP_SCTH(i,:));

    % Generate histogram of CMBP_S/M/C/T
    CMBP_MTSum = CMBP_M;
    CMBP_SCSum = CMBP_S;
    idx = find(CMBP_C);
    CMBP_SCSum(idx) = CMBP_SCSum(idx)+map.num;
    idx = find(CMBP_T);
    CMBP_MTSum(idx) = CMBP_MTSum(idx)+map.num;
    CMBP_SMCT = [CMBP_SCSum(:),CMBP_MTSum(:)];
    Hist3D = hist3(CMBP_SMCT,[map.num*2,map.num*2]);
    CMBP_SMCTH(i,:) = reshape(Hist3D,1,numel(Hist3D));
    CMBP_SMCTH(i,:)=CMBP_SMCTH(i,:)/sum(CMBP_SMCTH(i,:));
    
    axes(handles.axes1);
    imshow(Test_Image);
%     str=sprintf('正在提取ICMBP特征%d%%',round(i/len*100));
%     set(handles.uipanel8,'Title',str);
%     str_TT=[str_TT,'█'];
%     set(handles.Wait_Bar,'string',str_TT);
%     pause(0.001);
end
% str=sprintf('ICMBP特征提取完成！');
% set(handles.uipanel8,'Title',str);
% Time=toc;
% set(handles.Time,'string',Time);
save 'map' map;
save 'CMBP_SCTH' CMBP_SCTH;
save 'CMBP_SMCTH' CMBP_SMCTH;
guidata(hObject, handles);

function CMPC_STD_Callback(hObject, eventdata, handles)
% hObject    handle to Contrast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pathname=handles.Sam_pathname;
files=handles.Sam_files;
len = length(files);

prompt={'请输入滤波器的尺度数：','请输入相对带宽值：','请输入带通数值：','请输入噪声阈值点常数：','请输入截断值：','请输入指数函数系数：','请输入噪声阈值：'};
name='参数设置';%设置标题
numlines=1;
defAns={'4','0.5','2','2','0.4','0.3','-1'};
Resize='on';%设定对话框尺寸可调节
answer = inputdlg(prompt,name,numlines,defAns,'on')%创建输入对话框
% [nscale; norient; minWaveLength; mult; sigmaOnf;k;cutOff; noiseMethod]=str2double(answer);
nscale=str2double(answer{1,1}); mb=str2double(answer{2,1});
mu=str2double(answer{3,1});k=str2double(answer{4,1});
cutOff=str2double(answer{5,1});
de=str2double(answer{6,1});
noiseMethod=str2double(answer{7,1});
% tic;
% set(handles.uipanel8,'Visible','on');
% set(handles.Wait_Bar,'Visible','on');
% set(handles.Wait_bar,'String','CMPC方法边缘检测中...');
% pause(0.001);
% tic;

% set(handles.uipanel8,'Title','正在提取对比度特征0%');
% set(handles.Wait_Bar,'string','');
% pause(0.001);
% str_TT='';
for i=1:len
    filename = sprintf('%s\\%s', pathname, files{i});
    Test_Image=imread(filename);
    Test_Image=rgb2gray(Test_Image);
    CMPCSTD{i,:}=cmpc(Test_Image,nscale,mb,mu,k,cutOff,de,noiseMethod);
%     [CMPC_S(i,:)]=CMPC_S(Test_Image);
    axes(handles.axes1);
    imshow(Test_Image);
%     str=sprintf('正在提取对比度特征%d%%',round(i/len*100));
%     set(handles.uipanel8,'Title',str);
%     str_TT=[str_TT,'█'];
%     set(handles.Wait_Bar,'string',str_TT);
%     pause(0.001);
end
% str=sprintf('对比度特征提取完成！');
% set(handles.uipanel8,'Title',str);
% Time=toc;
% set(handles.Time,'string',Time);
% save 'CMPC_S' CMPC_S;
guidata(hObject, handles);
