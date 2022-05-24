function varargout = saw(varargin)
% SAW MATLAB code for saw.fig
%      SAW, by itself, creates a new SAW or raises the existing
%      singleton*.
%
%      H = SAW returns the handle to a new SAW or the handle to
%      the existing singleton*.
%
%      SAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAW.M with the given input arguments.
%
%      SAW('Property','Value',...) creates a new SAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before saw_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to saw_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help saw

% Last Modified by GUIDE v2.5 24-May-2022 14:35:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @saw_OpeningFcn, ...
                   'gui_OutputFcn',  @saw_OutputFcn, ...
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


% --- Executes just before saw is made visible.
function saw_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to saw (see VARARGIN)

% Choose default command line output for saw
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes saw wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = saw_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnshow.
function btnshow_Callback(hObject, eventdata, handles)
filename = 'data_sawww.csv';
dataset = readcell(filename);
dataset = dataset(2:end,1:end);
header = readcell(filename, 'Range', 'A1:E1');

set(handles.uitdata, 'Data', dataset, 'ColumnName', header);
% hObject    handle to btnshow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function price_Callback(hObject, eventdata, handles)
% hObject    handle to price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of price as text
%        str2double(get(hObject,'String')) returns contents of price as a double


% --- Executes during object creation, after setting all properties.
function price_CreateFcn(hObject, eventdata, handles)
% hObject    handle to price (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function year_Callback(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of year as text
%        str2double(get(hObject,'String')) returns contents of year as a double


% --- Executes during object creation, after setting all properties.
function year_CreateFcn(hObject, eventdata, handles)
% hObject    handle to year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mileage_Callback(hObject, eventdata, handles)
% hObject    handle to mileage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mileage as text
%        str2double(get(hObject,'String')) returns contents of mileage as a double


% --- Executes during object creation, after setting all properties.
function mileage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mileage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function condition_Callback(hObject, eventdata, handles)
% hObject    handle to condition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of condition as text
%        str2double(get(hObject,'String')) returns contents of condition as a double


% --- Executes during object creation, after setting all properties.
function condition_CreateFcn(hObject, eventdata, handles)
% hObject    handle to condition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btncalculate.
function btncalculate_Callback(hObject, eventdata, handles)
a1 = str2double(get(handles.price, 'string'));
a2 = str2double(get(handles.year, 'string'));
a3 = str2double(get(handles.mileage, 'string'));
a4 = str2double(get(handles.condition, 'string'));

total = a1 + a2 + a3 + a4;

if total == 100
    set(handles.tmsg, 'string', '');
    filename = 'data_sawww.csv';
    data = readcell(filename);
    
    a1 = a1/100;
    a2 = a2/100;
    a3 = a3/100;
    a4 = a4/100;
    
    Cell = data(2:end,2:end);
    tableData = cell2table(data(2:end,1:end));
    header = data(1,:);
    tableData.Properties.VariableNames = header;

    switch get(get(handles.bgprice,'SelectedObject'),'Tag')
        case 'rbprice0'
            k1 = 0;
        case 'rbprice1'
            k1 = 1;
    end

    switch get(get(handles.bgyear,'SelectedObject'),'Tag')
        case 'rbyear0'
            k2 = 0;
        case 'rbyear1'
            k2 = 1;
    end

    switch get(get(handles.bgmileage,'SelectedObject'),'Tag')
        case 'rbmileage0'
            k3 = 0;
        case 'rbmileage1'
            k3 = 1;
    end

    switch get(get(handles.bgcond,'SelectedObject'),'Tag')
        case 'rbcond0'
            k4 = 0;
        case 'rbcond1'
            k4 = 1;
    end

    [m, n] = size(Cell);
    C = cell2mat(Cell);
    R = zeros(m,n);

    w = [a1, a2, a3, a4];
    k = [k1, k2, k3, k4];

    for j=1:n
        if k(j)==1
            R(:,j)=C(:,j)./max(C(:,j));
        else
            R(:,j)=min(C(:,j))./C(:,j);
        end
    end
    V = zeros(1, m);
    for i=1:m
        V(i) = sum(w.*R(i,:));
    end

    V = V.';
    result = tableData(:, 1);
    name = 'V';
    result.(name) = V;
    sorted = sortrows(result, 2, 'descend');
    convert = table2cell(sorted);
    str = convert{1,1};

    set(handles.uitdata, 'Data', convert, 'ColumnName', {'Judul', 'V'});
    set(handles.tresult, 'string', str);
else
    set(handles.tmsg, 'string', 'Total of Weight Value is not 100');
end



% hObject    handle to btncalculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
