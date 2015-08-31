clear
close all
clc

%%GUI
%initial figure
dispSize = get(0, 'ScreenSize');
figSize = dispSize(3:4)*0.9;
figHndl = figure('pos',[(dispSize(3)-figSize(1))/2 (dispSize(4)-figSize(2))/2  figSize(1) figSize(2)],'Name','Ground Station','NumberTitle','off','menu','none');

%tabs
MAVTabGroup = uitabgroup();
MAVTab = uitab(MAVTabGroup,'Title','MAV 1','Backgroundcolor','r','UserData',constants.address('K1'));
MAVTab = [MAVTab uitab(MAVTabGroup,'Title','MAV 2','Backgroundcolor','b','UserData',constants.address('K2'))];
MAVTab = [MAVTab uitab(MAVTabGroup,'Title','MAV 3','Backgroundcolor','k','UserData',constants.address('K3'))];
MAVTab = [MAVTab uitab(MAVTabGroup,'Title','MAV 4','Backgroundcolor',[1 0.5 1],'UserData',constants.address('K4'))];
HkEyeTab = uitab(MAVTabGroup,'Title','Hawk Eye');

%left panel
gui.setTelemetry(MAVTab(1));
gui.setTelemetry(MAVTab(2));
gui.setTelemetry(MAVTab(3));
gui.setTelemetry(MAVTab(4));

%right panel
gui.setCommands(MAVTab(1));
gui.setCommands(MAVTab(2));
gui.setCommands(MAVTab(3));
gui.setCommands(MAVTab(4));

%axes
gui.setAxes(MAVTab(1));
gui.setAxes(MAVTab(2));
gui.setAxes(MAVTab(3));
gui.setAxes(MAVTab(4));


gui.setHawkEye(HkEyeTab);

%%SERIAL LINK
%instrfind
%   fclose(instrfind);
% global COM;
% COM = serial('COM3');
% set(COM,'BaudRate',115200);
% fopen(COM);
% 
% while(1>0)
%    drawnow();
%    if COM.bytesavailable>0
%         packetIN = fread(COM,1); 
%         if packetIN==hex2dec('7E')            
%             hlp=fread(COM,2);
%             packetIN=[packetIN hlp'];
%             hlp=fread(COM,packetIN(3)+1); 
%             packetIN=[packetIN hlp'];
%             dec2hex(packetIN);
%             if packetIN(4)==144
%                 [addr,data]=serial.parseRPacket(packetIN);
%                 protocol.packetHandler(addr,data); 
%             end    
%         end    
%    end
%    
% end      







