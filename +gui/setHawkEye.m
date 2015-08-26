function setHawkEye( uiCont )
axPanel = uipanel(uiCont,'Units','Normalized','Position',[0.1 0 0.8 1],'Title','Hawk Eye');
ax=axes('Parent',axPanel,'Units','Normalized','Position',[0.05 0.05 0.9 0.9]);
set(uiCont,'UserData',ax);
set(ax,'XGrid','on','YGrid','on','XDir','reverse','xlim',[-10 10],'ylim',[-10 10]);

M=findobj('Title','MAV 1');
lines=getappdata(M,'lines');  
line('Xdata', lines(constants.telemetries('AILERON_POSITION')).YData(end), 'YData', lines(constants.telemetries('ELEVATOR_POSITION')).YData(end), 'LineWidth', 3, 'Parent', ax, 'DisplayName',M.Title,'Color',M.BackgroundColor,'MarkerSize',20,'Marker','X','tag','POS');
line('Xdata', lines(constants.telemetries('AILERON_POS_SETPOINT')).YData(end), 'YData', lines(constants.telemetries('ELEVATOR_POS_SETPOINT')).YData(end), 'LineWidth', 3, 'Parent', ax, 'DisplayName',M.Title,'Color',M.BackgroundColor,'MarkerSize',7,'Marker','o','tag','SET');

M=findobj('Title','MAV 2');
lines=getappdata(M,'lines');  
line('Xdata', lines(constants.telemetries('AILERON_POSITION')).YData(end), 'YData', lines(constants.telemetries('ELEVATOR_POSITION')).YData(end), 'LineWidth', 3, 'Parent', ax, 'DisplayName',M.Title,'Color',M.BackgroundColor,'MarkerSize',20,'Marker','X','tag','POS');
line('Xdata', lines(constants.telemetries('AILERON_POS_SETPOINT')).YData(end), 'YData', lines(constants.telemetries('ELEVATOR_POS_SETPOINT')).YData(end), 'LineWidth', 3, 'Parent', ax, 'DisplayName',M.Title,'Color',M.BackgroundColor,'MarkerSize',7,'Marker','o','tag','SET');

M=findobj('Title','MAV 3');
lines=getappdata(M,'lines');  
line('Xdata', lines(constants.telemetries('AILERON_POSITION')).YData(end), 'YData', lines(constants.telemetries('ELEVATOR_POSITION')).YData(end), 'LineWidth', 3, 'Parent', ax, 'DisplayName',M.Title,'Color',M.BackgroundColor,'MarkerSize',20,'Marker','X','tag','POS');
line('Xdata', lines(constants.telemetries('AILERON_POS_SETPOINT')).YData(end), 'YData', lines(constants.telemetries('ELEVATOR_POS_SETPOINT')).YData(end), 'LineWidth', 3, 'Parent', ax, 'DisplayName',M.Title,'Color',M.BackgroundColor,'MarkerSize',7,'Marker','o','tag','SET');

uicontrol(uiCont,'Units','Normalized','Position',[0.01 0.9 0.08 0.08],'Style', 'push', 'String', 'Clear Axes','callback',@update.clearHawkEyeCallback);
end
