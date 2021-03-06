function varargout = piano(varargin)
% PIANO MATLAB code for piano.fig
%      PIANO, by itself, creates a new PIANO or raises the existing
%      singleton*.
%
%      H = PIANO returns the handle to a new PIANO or the handle to
%      the existing singleton*.
%
%      PIANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIANO.M with the given input arguments.
%
%      PIANO('Property','Value',...) creates a new PIANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before piano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to piano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piano

% Last Modified by GUIDE v2.5 13-Jan-2022 13:41:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piano_OpeningFcn, ...
                   'gui_OutputFcn',  @piano_OutputFcn, ...
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


% --- Executes just before piano is made visible.
function piano_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to piano (see VARARGIN)

% Choose default command line output for piano
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piano_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Do.
function Do_Callback(hObject, eventdata, handles)
% hObject    handle to Do (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = gen_wave(1,1);

sound(y,8192);


% --- Executes on button press in Re.
function Re_Callback(hObject, eventdata, handles)
% hObject    handle to Re (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = gen_wave(2,1);
sound(y,8192);



% --- Executes on button press in Mi.
function Mi_Callback(hObject, eventdata, handles)
% hObject    handle to Mi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = gen_wave(3,1);
sound(y,8192);




% --- Executes on button press in Fa.
function Fa_Callback(hObject, eventdata, handles)
% hObject    handle to Fa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = gen_wave(4,1);
sound(y,8192);

% --- Executes on button press in So.
function So_Callback(hObject, eventdata, handles)
% hObject    handle to So (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = gen_wave(5,1);
sound(y,8192);

% --- Executes on button press in La.
function La_Callback(hObject, eventdata, handles)
% hObject    handle to La (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = gen_wave(6,1);
sound(y,8192);

% --- Executes on button press in Xi.
function Xi_Callback(hObject, eventdata, handles)
% hObject    handle to Xi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y = gen_wave(7,1);
sound(y,8192);
