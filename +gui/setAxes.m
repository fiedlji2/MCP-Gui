function setAxes( uiCont )
SIZE=100;

xData=1:SIZE;
yData=nan(1,SIZE);

axesPanel = uipanel(uiCont,'Units','Normalized','Position',[0.1 0.0 0.8 1],'Title','Telemety Monitoring');

ax=axes('Parent',axesPanel,'Units','Normalized','Position',[0.05 0.71 0.90 0.23]);
set(ax,'XGrid','on','YGrid','on');
title('Movements & Setpoints');
xlim([0,SIZE]);
lines(constants.telemetries('ALTITUDE')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Altitude','Color','y');
lines(constants.telemetries('ALTITUDE_ESTIMATED')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Altitude Estimated','Color','m');
lines(constants.telemetries('ALTITUDE_SPEED')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Altitude Speed','Color',[100 10 180]/255);

lines(constants.telemetries('ELEVATOR_SPEED')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Speed','Color','r');
lines(constants.telemetries('AILERON_SPEED')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Speed','Color','g');
lines(constants.telemetries('ELEVATOR_SPEED_ESTIMATED')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Speed Estimated','Color','b');
lines(constants.telemetries('AILERON_SPEED_ESTIMATED')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Speed Estimated','Color','k');

lines(constants.telemetries('ELEVATOR_POSITION')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Position','Color',[70 130 180]/255);
lines(constants.telemetries('AILERON_POSITION')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Position','Color',[85 107 47]/255);
lines(constants.telemetries('ELEVATOR_SHIFT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Shift','Color',[107 142 35]/255);
lines(constants.telemetries('AILERON_SHIFT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Shift','Color',[255 215 0]/255);

lines(constants.telemetries('ELEVATOR_ACC')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Acceleration','Color',[205 92 92]/255);
lines(constants.telemetries('AILERON_ACC')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Acceleration','Color',[244 164 96]/255);
lines(constants.telemetries('ELEVATOR_ACC_INPUT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Acceleration Input','Color',[210 105 30]/255);
lines(constants.telemetries('ELEVATOR_ACC_ERROR')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Acceleration Error','Color',[165 42 42]/255);
lines(constants.telemetries('AILERON_ACC_INPUT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Acceleration Input','Color',[255 140 0]/255);
lines(constants.telemetries('AILERON_ACC_ERROR')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Acceleration Error','Color',[255 20 147]/255);

lines(constants.telemetries('ALTITUDE_SETPOINT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Altitude Setpoint','Color',[176 48 96]/255);
lines(constants.telemetries('ELEVATOR_POS_SETPOINT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Position Setpoint','Color',[139 87 66]/255);
lines(constants.telemetries('AILERON_POS_SETPOINT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Position Setpoint','Color',[145 44 238]/255);

ax=axes('Parent',axesPanel,'Units','Normalized','Position',[0.05 0.38 0.90 0.23]);
set(ax,'XGrid','on','YGrid','on');
title('Blob');
xlim([0,SIZE]);
lines(constants.telemetries('BLOB1_X')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob1 X','Color','y');
lines(constants.telemetries('BLOB1_Y')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob1 Y','Color','m');
lines(constants.telemetries('BLOB1_Z')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob1 Z','Color',[100 10 180]/255);

lines(constants.telemetries('BLOB2_X')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob2 X','Color','r');
lines(constants.telemetries('BLOB2_Y')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob2 Y','Color','g');
lines(constants.telemetries('BLOB2_Z')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob2 Z','Color','b');

lines(constants.telemetries('BLOB3_X')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob3 X','Color','k');
lines(constants.telemetries('BLOB3_Y')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob3 Y','Color',[70 130 180]/255);
lines(constants.telemetries('BLOB3_Z')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob3 Z','Color',[85 107 47]/255);

lines(constants.telemetries('BLOB4_X')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob4 X','Color',[107 142 35]/255);
lines(constants.telemetries('BLOB4_Y')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob4 Y','Color',[255 215 0]/255);
lines(constants.telemetries('BLOB4_Z')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Blob4 Z','Color',[205 92 92]/255);

ax=axes('Parent',axesPanel,'Units','Normalized','Position',[0.05 0.05 0.90 0.23]);
set(ax,'XGrid','on','YGrid','on');
title('Outputs');
xlim([0,SIZE]);
lines(constants.telemetries('ALTITUDE_CONTROLLER_OUTPUT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Altitude Controller Output','Color','y');
lines(constants.telemetries('AILERON_CONTROLLER_OUTPUT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Aileron Controller Output','Color','m');
lines(constants.telemetries('ELEVATOR_CONTROLLER_OUTPUT')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Elevator Controller Output','Color',[100 10 180]/255);

lines(constants.telemetries('OUTPUT_THROTTLE')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Output Throttle','Color','r');
lines(constants.telemetries('OUTPUT_ELEVATOR')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Output Elevator','Color','g');
lines(constants.telemetries('OUTPUT_AILERON')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Output Aileron','Color','b');
lines(constants.telemetries('OUTPUT_RUDDER')) = line('Xdata', xData, 'YData', yData, 'LineWidth', 1.5, 'Parent', ax, 'DisplayName','Output Rudder','Color','k');


setappdata(uiCont,'lines',lines);
end

