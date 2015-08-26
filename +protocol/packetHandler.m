function packetHandler( data, address )
    MAV = findobj('UserData',address);

    %TELEMETRY
    if data(1)==116
        lines=getappdata(MAV,'lines');             
        for i=1:((max(size(data))-1)/5)
            telType=data(1+i*5-4);
            telVal=serial.data2float(data((1+i*5-3):(1+i*5)));
            lines(telType).YData=[lines(telType).YData(2:end) telVal];
            
            %HawkEye Lines update
            switch telType
                case constants.telemetries('ELEVATOR_POSITION')
                    set(findobj('DisplayName',MAV.Title,'tag','POS'),'yData',telVal);
                case constants.telemetries('AILERON_POSITION')
                    set(findobj('DisplayName',MAV.Title,'tag','POS'),'xData',telVal);
                case constants.telemetries('ELEVATOR_POS_SETPOINT')
                    set(findobj('DisplayName',MAV.Title,'tag','SET'),'yData',telVal);
                case constants.telemetries('AILERON_POS_SETPOINT')
                    set(findobj('DisplayName',MAV.Title,'tag','SET'),'xData',telVal);
            end        
        end       
    %REPORTS
    elseif data(1)==114
        switch data(2)
            %Telemetry Report            
            case constants.commands('TELEMETRY_COORDINATOR')
                telGroup=findobj('Title','Telemetry','Parent',MAV);
                for i=1:max(size(data))-2
                   butt=findobj('Parent',telGroup,'UserData',i);
                   butt.Value=data(2+i);
                end 
            %Controller Report    
            case constants.commands('CONTROLLERS')
                edit=findobj('Style','Edit','Parent',findobj('Title','Controllers','Parent',findobj('Title','Commands','Parent',MAV)));
                strings={'Off'; 'Altitude'; 'MPC'};
                edit.String=strings(data(3),:);
            %Position Slaves
            case constants.commands('POSITION_SLAVE_SET')                
                top=findobj('UserData','TOP','Parent',findobj('Title','Position Slave Set','Parent',findobj('Title','Commands','Parent',MAV)));
                top.Value=addr2val(data(3:10));
                right=findobj('UserData','RIGHT','Parent',findobj('Title','Position Slave Set','Parent',findobj('Title','Commands','Parent',MAV)));
                right.Value=addr2val(data(11:18));
                back=findobj('UserData','BACK','Parent',findobj('Title','Position Slave Set','Parent',findobj('Title','Commands','Parent',MAV)));
                back.Value=addr2val(data(19:26));
                left=findobj('UserData','LEFT','Parent',findobj('Title','Position Slave Set','Parent',findobj('Title','Commands','Parent',MAV)));
                left.Value=addr2val(data(27:34));
        end    
    end
    
    function value=addr2val(addr)
        if sum(addr)>0
            slaveMAV=findobj('UserData',addr);
            switch slaveMAV.Title
                case 'MAV 1'
                	value=2;
                case 'MAV 2'
                    value=3;
                case 'MAV 3'
                     value=4;
                case 'MAV 4'
                     value=5;
                otherwise
                    value=NaN;
            end    
        else
            value=1;
        end    
    end    
end



