function numb = telemetries( teltype )
    if strcmp(teltype,'ALTITUDE_ESTIMATED')              numb = 1;
    elseif strcmp(teltype,'ALTITUDE')                    numb = 2;
    elseif strcmp(teltype,'ELEVATOR_SPEED')              numb = 3;
    elseif strcmp(teltype,'AILERON_SPEED')               numb = 4;
    elseif strcmp(teltype,'ELEVATOR_SPEED_ESTIMATED')    numb = 5;
    elseif strcmp(teltype,'AILERON_SPEED_ESTIMATED')     numb = 6;
    elseif strcmp(teltype,'ELEVATOR_POSITION')           numb = 7;
    elseif strcmp(teltype,'AILERON_POSITION')            numb = 8;
    elseif strcmp(teltype,'ALTITUDE_CONTROLLER_OUTPUT')  numb = 9;
    elseif strcmp(teltype,'ALTITUDE_SPEED')              numb = 10;
    elseif strcmp(teltype,'AILERON_CONTROLLER_OUTPUT')   numb = 11;
    elseif strcmp(teltype,'ELEVATOR_CONTROLLER_OUTPUT')  numb = 12;
    elseif strcmp(teltype,'ALTITUDE_SETPOINT')           numb = 13;
    elseif strcmp(teltype,'ELEVATOR_POS_SETPOINT')       numb = 14;
    elseif strcmp(teltype,'AILERON_POS_SETPOINT')        numb = 15;         
    elseif strcmp(teltype,'ELEVATOR_ACC')                numb = 16;
    elseif strcmp(teltype,'AILERON_ACC')                 numb = 17;  
    elseif strcmp(teltype,'OUTPUT_THROTTLE')             numb = 18;
    elseif strcmp(teltype,'OUTPUT_ELEVATOR')             numb = 19;
    elseif strcmp(teltype,'OUTPUT_AILERON')              numb = 20;
    elseif strcmp(teltype,'OUTPUT_RUDDER')               numb = 21;
    elseif strcmp(teltype,'ELEVATOR_SHIFT')              numb = 22;         
    elseif strcmp(teltype,'AILERON_SHIFT')               numb = 23;
    elseif strcmp(teltype,'ELEVATOR_ACC_INPUT')          numb = 24;
    elseif strcmp(teltype,'ELEVATOR_ACC_ERROR')          numb = 25;
    elseif strcmp(teltype,'AILERON_ACC_INPUT')           numb = 26;
    elseif strcmp(teltype,'AILERON_ACC_ERROR')           numb = 27;       
    elseif strcmp(teltype,'BLOB1_X')                     numb = 28;
    elseif strcmp(teltype,'BLOB1_Y')                     numb = 29;
    elseif strcmp(teltype,'BLOB1_Z')                     numb = 30;        
    elseif strcmp(teltype,'BLOB2_X')                     numb = 31;
    elseif strcmp(teltype,'BLOB2_Y')                     numb = 32;
    elseif strcmp(teltype,'BLOB2_Z')                     numb = 33; 
    elseif strcmp(teltype,'BLOB3_X')                     numb = 34;
    elseif strcmp(teltype,'BLOB3_Y')                     numb = 35;
    elseif strcmp(teltype,'BLOB3_Z')                     numb = 36; 
    elseif strcmp(teltype,'BLOB4_X')                     numb = 37;
    elseif strcmp(teltype,'BLOB4_Y')                     numb = 38;
    elseif strcmp(teltype,'BLOB4_Z')                     numb = 39;         
    else numb = NaN; 
    end    
end

