function setCommands( uiCont )
commandPanel = uipanel(uiCont,'Units','Normalized','Position',[0.9 0 0.1 1],'Title','Commands');

uicontrol(commandPanel,'Units','Normalized','Position',[0.05 0.9 0.9 0.05],'Style', 'push', 'String', 'Set Time','callback',@update.setTimeCallback);      

landingButtonGroup = uibuttongroup(commandPanel,'Units','Normalized','Position',[0.05 0.82 0.9 0.06],'Title','Landing');
uicontrol(landingButtonGroup,'Units','Normalized','Position',[0.0 0.0 0.5 1],'Style', 'push', 'String', 'Land','UserData',constants.general('ENABLE'),'callback',@update.landingCallback);
uicontrol(landingButtonGroup,'Units','Normalized','Position',[0.5 0.0 0.5 1],'Style', 'push', 'String', 'Take Off','UserData',constants.general('DISABLE'),'callback',@update.landingCallback); 

controllersButtonGroup = uibuttongroup(commandPanel,'Units','Normalized','Position',[0.05 0.64 0.9 0.15],'Title','Controllers');
uicontrol(controllersButtonGroup,'Units','Normalized','Position',[0.0 0.7 0.4 0.3],'Style', 'push', 'String', 'Status:','callback',@update.statusControllerCallback); 
uicontrol(controllersButtonGroup,'Units','Normalized','Position',[0.41 0.7 0.58 0.3],'Style', 'Edit'); 
uicontrol(controllersButtonGroup,'Units','Normalized','Position',[0.0 0.33 0.5 0.3],'Style', 'push', 'String', 'None','UserData',constants.controllers('OFF'),'callback',@update.setControllerCallback); 
uicontrol(controllersButtonGroup,'Units','Normalized','Position',[0.5 0.33 0.5 0.3],'Style', 'push', 'String', 'Altitude','UserData',constants.controllers('ALTITUDE'),'callback',@update.setControllerCallback); 
uicontrol(controllersButtonGroup,'Units','Normalized','Position',[0.25 0.0 0.5 0.3],'Style', 'push', 'String', 'MPC','UserData',constants.controllers('MPC'),'callback',@update.setControllerCallback); 


positionPanel = uipanel(commandPanel,'Units','Normalized','Position',[0.05 0.49 0.9 0.12],'Title','Position Set');
uicontrol(positionPanel,'Units','Normalized','Position',[0.0 0.7 0.45 0.25],'Style', 'text', 'String', 'Elevator:');
ele=uicontrol(positionPanel,'Units','Normalized','Position',[0.5 0.7 0.45 0.3],'Style', 'edit','String',0);
uicontrol(positionPanel,'Units','Normalized','Position',[0.0 0.4 0.45 0.25],'Style', 'text', 'String', 'Aileron:');
ail=uicontrol(positionPanel,'Units','Normalized','Position',[0.5 0.4 0.45 0.3],'Style', 'edit','String',0);
uicontrol(positionPanel,'Units','Normalized','Position',[0.0 0.0 1 0.32],'Style', 'push', 'String', 'Set Position','callback',{@update.posSetCallback,ele,ail});

slaveSetPanel = uipanel(commandPanel,'Units','Normalized','Position',[0.05 0.15 0.9 0.25],'Title','Position Slave Set');
        uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.0 0.8 0.35 0.2],'Style', 'text', 'String', 'TOP:');
list(1)=uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.36 0.8 0.65 0.2],'Style', 'popup', 'String', {'None','MAV 1','MAV 2','MAV 3','MAV 4'},'UserData','TOP');
        uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.0 0.6 0.35 0.2],'Style', 'text', 'String', 'RIGHT:');
list(2)=uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.36 0.6 0.65 0.2],'Style', 'popup', 'String', {'None','MAV 1','MAV 2','MAV 3','MAV 4'},'UserData','RIGHT');
        uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.0 0.4 0.35 0.2],'Style', 'text', 'String', 'BACK:');
list(3)=uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.36 0.4 0.65 0.2],'Style', 'popup', 'String', {'None','MAV 1','MAV 2','MAV 3','MAV 4'},'UserData','BACK');
        uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.0 0.2 0.35 0.2],'Style', 'text', 'String', 'LEFT:');
list(4)=uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.36 0.2 0.65 0.2],'Style', 'popup', 'String', {'None','MAV 1','MAV 2','MAV 3','MAV 4'},'UserData','LEFT');
uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.0 0.0 0.8 0.2],'Style', 'push', 'String', 'Set Slaves','callback',{@update.posSlaveSetCallback,list});
uicontrol(slaveSetPanel,'Units','Normalized','Position',[0.8 0.0 0.2 0.2],'Style', 'push','String','R','BackgroundColor','g','callback',@update.statusPosSlaveSetCallback);
end
