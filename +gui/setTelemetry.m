function setTelemetry( uiCont )
telemetryButtonGroup = uibuttongroup(uiCont,'Units','Normalized','Position',[0 0 0.1 1],'Title','Telemetry','SelectionChangedFcn',@bselection);

checkBoxes(1) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.97 0.9 0.02],'Style', 'check', 'String', 'Estimated altitude','UserData',1,'callback',@update.checkTelCallback);      
checkBoxes(2) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.95 0.9 0.02],'Style', 'check', 'String', 'Altitude','UserData',2,'callback',@update.checkTelCallback); 
checkBoxes(10)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.93 0.9 0.02],'Style', 'check', 'String', 'Altitude speed','UserData',10,'callback',@update.checkTelCallback); 
checkBoxes(13)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.91 0.9 0.02],'Style', 'check', 'String', 'Altitude setpoint','UserData',13,'callback',@update.checkTelCallback); 

checkBoxes(7) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.88 0.9 0.02],'Style', 'check', 'String', 'Elevator Positon','UserData',7,'callback',@update.checkTelCallback); 
checkBoxes(8) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.86 0.9 0.02],'Style', 'check', 'String', 'Aileron Position','UserData',8,'callback',@update.checkTelCallback);
checkBoxes(14)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.84 0.9 0.02],'Style', 'check', 'String', 'Elevator Position setpoint','UserData',14,'callback',@update.checkTelCallback); 
checkBoxes(15)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.82 0.9 0.02],'Style', 'check', 'String', 'Aileron Position setpoint','UserData',15,'callback',@update.checkTelCallback); 

checkBoxes(3) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.79 0.9 0.02],'Style', 'check', 'String', 'Elevator Speed','UserData',3,'callback',@update.checkTelCallback); 
checkBoxes(4) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.77 0.9 0.02],'Style', 'check', 'String', 'Aileron Speed','UserData',4,'callback',@update.checkTelCallback);
checkBoxes(5) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.75 0.9 0.02],'Style', 'check', 'String', 'Estimated Elevator Speed','UserData',5,'callback',@update.checkTelCallback); 
checkBoxes(6) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.73 0.9 0.02],'Style', 'check', 'String', 'Estimated Aileron Speed','UserData',6,'callback',@update.checkTelCallback);

checkBoxes(16)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.70 0.9 0.02],'Style', 'check', 'String', 'Elevator Acceleration','UserData',16,'callback',@update.checkTelCallback); 
checkBoxes(17)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.68 0.9 0.02],'Style', 'check', 'String', 'Aileron Acceleration','UserData',17,'callback',@update.checkTelCallback); 
checkBoxes(30)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.66 0.9 0.02],'Style', 'check', 'String', 'Elevator Acceleration input','UserData',24,'callback',@update.checkTelCallback);  
checkBoxes(32)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.64 0.9 0.02],'Style', 'check', 'String', 'Aileron Acceleration input','UserData',26,'callback',@update.checkTelCallback); 
checkBoxes(31)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.62 0.9 0.02],'Style', 'check', 'String', 'Elevator Acceleration error','UserData',25,'callback',@update.checkTelCallback);
checkBoxes(33)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.60 0.9 0.02],'Style', 'check', 'String', 'Aileron Acceleration error','UserData',27,'callback',@update.checkTelCallback); 

checkBoxes(28)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.48 0.9 0.02],'Style', 'check', 'String', 'Elevator Shift','UserData',22,'callback',@update.checkTelCallback); 
checkBoxes(29)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.46 0.9 0.02],'Style', 'check', 'String', 'Aileron Shift','UserData',23,'callback',@update.checkTelCallback); 

checkBoxes(9) =uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.38 0.9 0.02],'Style', 'check', 'String', 'Altitude Controller Output','UserData',9,'callback',@update.checkTelCallback); 
checkBoxes(11)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.36 0.9 0.02],'Style', 'check', 'String', 'Aileron Controller output','UserData',11,'callback',@update.checkTelCallback); 
checkBoxes(12)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.34 0.9 0.02],'Style', 'check', 'String', 'Elevator Controller output','UserData',12,'callback',@update.checkTelCallback); 

checkBoxes(19)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.31 0.9 0.02],'Style', 'check', 'String', 'Output Throttle','UserData',18,'callback',@update.checkTelCallback); 
checkBoxes(20)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.29 0.9 0.02],'Style', 'check', 'String', 'Output Elevator','UserData',19,'callback',@update.checkTelCallback); 
checkBoxes(21)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.27 0.9 0.02],'Style', 'check', 'String', 'Output Aileron','UserData',20,'callback',@update.checkTelCallback); 
checkBoxes(22)=uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.25 0.9 0.02],'Style', 'check', 'String', 'Output Rudder','UserData',21,'callback',@update.checkTelCallback); 
setappdata(uiCont,'checkboxes',checkBoxes);

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.1 0.14 0.8 0.03],'Style', 'push', 'String', 'Sync Telemetry','callback',@update.syncTelCallback);
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.1 0.10 0.8 0.03],'Style', 'push', 'String', 'Clear Axes','callback',@update.clearTelCallback);

end

