function setTelemetry( uiCont )
telemetryButtonGroup = uibuttongroup(uiCont,'Units','Normalized','Position',[0 0 0.1 1],'Title','Telemetry','SelectionChangedFcn',@bselection);

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.97 0.9 0.02],'Style', 'check', 'String', 'Estimated altitude','UserData',1,'callback',@update.checkTelCallback);      
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.95 0.9 0.02],'Style', 'check', 'String', 'Altitude','UserData',2,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.93 0.9 0.02],'Style', 'check', 'String', 'Altitude speed','UserData',10,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.91 0.9 0.02],'Style', 'check', 'String', 'Altitude setpoint','UserData',13,'callback',@update.checkTelCallback); 

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.88 0.9 0.02],'Style', 'check', 'String', 'Elevator Positon','UserData',7,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.86 0.9 0.02],'Style', 'check', 'String', 'Aileron Position','UserData',8,'callback',@update.checkTelCallback);
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.84 0.9 0.02],'Style', 'check', 'String', 'Elevator setpoint','UserData',14,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.82 0.9 0.02],'Style', 'check', 'String', 'Aileron setpoint','UserData',15,'callback',@update.checkTelCallback); 

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.79 0.9 0.02],'Style', 'check', 'String', 'Elevator Speed','UserData',3,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.77 0.9 0.02],'Style', 'check', 'String', 'Aileron Speed','UserData',4,'callback',@update.checkTelCallback);
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.75 0.9 0.02],'Style', 'check', 'String', 'Est. Elevator Speed','UserData',5,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.73 0.9 0.02],'Style', 'check', 'String', 'Est. Aileron Speed','UserData',6,'callback',@update.checkTelCallback);

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.70 0.9 0.02],'Style', 'check', 'String', 'Elevator Acceleration','UserData',16,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.68 0.9 0.02],'Style', 'check', 'String', 'Aileron Acceleration','UserData',17,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.66 0.9 0.02],'Style', 'check', 'String', 'Elevator Acc. input','UserData',24,'callback',@update.checkTelCallback);  
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.64 0.9 0.02],'Style', 'check', 'String', 'Aileron Acce. input','UserData',26,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.62 0.9 0.02],'Style', 'check', 'String', 'Elevator Acc. error','UserData',25,'callback',@update.checkTelCallback);
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.60 0.9 0.02],'Style', 'check', 'String', 'Aileron Acc. error','UserData',27,'callback',@update.checkTelCallback); 

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.57 0.9 0.02],'Style', 'check', 'String', 'Elevator Shift','UserData',22,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.55 0.9 0.02],'Style', 'check', 'String', 'Aileron Shift','UserData',23,'callback',@update.checkTelCallback); 

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.52 0.9 0.02],'Style', 'check', 'String', 'Altitude Controller output','UserData',9,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.50 0.9 0.02],'Style', 'check', 'String', 'Aileron Controller output','UserData',11,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.48 0.9 0.02],'Style', 'check', 'String', 'Elevator Controller output','UserData',12,'callback',@update.checkTelCallback); 

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.45 0.9 0.02],'Style', 'check', 'String', 'Output Throttle','UserData',18,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.43 0.9 0.02],'Style', 'check', 'String', 'Output Elevator','UserData',19,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.41 0.9 0.02],'Style', 'check', 'String', 'Output Aileron','UserData',20,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.39 0.9 0.02],'Style', 'check', 'String', 'Output Rudder','UserData',21,'callback',@update.checkTelCallback); 

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.36 0.9 0.02],'Style', 'check', 'String', 'Blob 1 X','UserData',28,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.34 0.9 0.02],'Style', 'check', 'String', 'Blob 1 Y','UserData',29,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.32 0.9 0.02],'Style', 'check', 'String', 'Blob 1 Z','UserData',30,'callback',@update.checkTelCallback);

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.29 0.9 0.02],'Style', 'check', 'String', 'Blob 2 X','UserData',31,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.27 0.9 0.02],'Style', 'check', 'String', 'Blob 2 Y','UserData',32,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.25 0.9 0.02],'Style', 'check', 'String', 'Blob 2 Z','UserData',33,'callback',@update.checkTelCallback);

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.22 0.9 0.02],'Style', 'check', 'String', 'Blob 3 X','UserData',34,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.20 0.9 0.02],'Style', 'check', 'String', 'Blob 3 Y','UserData',35,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.18 0.9 0.02],'Style', 'check', 'String', 'Blob 3 Z','UserData',36,'callback',@update.checkTelCallback);

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.15 0.9 0.02],'Style', 'check', 'String', 'Blob 4 X','UserData',37,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.13 0.9 0.02],'Style', 'check', 'String', 'Blob 4 Y','UserData',38,'callback',@update.checkTelCallback); 
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.05 0.11 0.9 0.02],'Style', 'check', 'String', 'Blob 4 Z','UserData',39,'callback',@update.checkTelCallback);

uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.1 0.05 0.8 0.03],'Style', 'push', 'String', 'Sync Telemetry','callback',@update.syncTelCallback);
uicontrol(telemetryButtonGroup,'Units','Normalized','Position',[0.1 0.01 0.8 0.03],'Style', 'push', 'String', 'Clear Axes','callback',@update.clearTelCallback);

end

