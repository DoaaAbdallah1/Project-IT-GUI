function varargout = CyclicCodeEncode22(varargin)
% CYCLICCODEENCODE22 MATLAB code for CyclicCodeEncode22.fig
%      CYCLICCODEENCODE22, by itself, creates a new CYCLICCODEENCODE22 or raises the existing
%      singleton*.
%
%      H = CYCLICCODEENCODE22 returns the handle to a new CYCLICCODEENCODE22 or the handle to
%      the existing singleton*.
%
%      CYCLICCODEENCODE22('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CYCLICCODEENCODE22.M with the given input arguments.
%
%      CYCLICCODEENCODE22('Property','Value',...) creates a new CYCLICCODEENCODE22 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CyclicCodeEncode22_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CyclicCodeEncode22_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CyclicCodeEncode22

% Last Modified by GUIDE v2.5 11-May-2023 15:15:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CyclicCodeEncode22_OpeningFcn, ...
                   'gui_OutputFcn',  @CyclicCodeEncode22_OutputFcn, ...
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


% --- Executes just before CyclicCodeEncode22 is made visible.
function CyclicCodeEncode22_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CyclicCodeEncode22 (see VARARGIN)

% Choose default command line output for CyclicCodeEncode22
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CyclicCodeEncode22 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CyclicCodeEncode22_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function h1_Callback(hObject, eventdata, handles)
% hObject    handle to h1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h1 as text
%        str2double(get(hObject,'String')) returns contents of h1 as a double


% --- Executes during object creation, after setting all properties.
function h1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h2_Callback(hObject, eventdata, handles)
% hObject    handle to h2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h2 as text
%        str2double(get(hObject,'String')) returns contents of h2 as a double


% --- Executes during object creation, after setting all properties.
function h2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h3_Callback(hObject, eventdata, handles)
% hObject    handle to h3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h3 as text
%        str2double(get(hObject,'String')) returns contents of h3 as a double


% --- Executes during object creation, after setting all properties.
function h3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
u=str2num(get(handles.h1,'string'));
g=str2num(get(handles.h2,'string'));
val=get(handles.m1,'value');
str=get(handles.m1,'string');
switch str{val}
    case 'Direct Method'
        r=encodeCycliCode(u,g);
    case 'G(x) Polynomial'
        r=encodeCycliCode2(u,g);
    case 'Difference Equation'
        r=encodeCycliCode3(u,g);
end
set(handles.h3,'string',num2str(r))


% --- Executes on selection change in m1.
function m1_Callback(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns m1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from m1


% --- Executes during object creation, after setting all properties.
function m1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
