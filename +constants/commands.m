function numb = commands( commType )
    if strcmp(commType,'TELEMETRY_COORDINATOR')              numb = 1;
    elseif strcmp(commType,'LANDING')                        numb = 2;
    elseif strcmp(commType,'CONTROLLERS')                    numb = 3;    
    elseif strcmp(commType,'TRAJECTORY_POINTS')              numb = 4;        
    elseif strcmp(commType,'POSITION_SLAVE_SET')             numb = 5;
    elseif strcmp(commType,'TIME')                           numb = 6;    
    elseif strcmp(commType,'POSITION_SET')                   numb = 7;          
    else numb = NaN; 
    end    
end
