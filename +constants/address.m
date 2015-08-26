function addr = address( adr )
    if strcmp(adr,'COORDINATOR')              addr = [0 0 0 0 0 0 0 0];
    elseif strcmp(adr,'KC1')                  addr = [0 hex2dec('13') hex2dec('A2') 0 hex2dec('40') hex2dec('B5') hex2dec('99') hex2dec('B9')];
    elseif strcmp(adr,'K1')                   addr = [0 hex2dec('13') hex2dec('A2') 0 hex2dec('40') hex2dec('B5') hex2dec('99') hex2dec('BF')];   
    elseif strcmp(adr,'K2')                   addr = [0 hex2dec('13') hex2dec('A2') 0 hex2dec('40') hex2dec('B5') hex2dec('99') hex2dec('BD')];        
    elseif strcmp(adr,'K3')                   addr = [0 hex2dec('13') hex2dec('A2') 0 hex2dec('40') hex2dec('B5') hex2dec('99') hex2dec('B8')];
    elseif strcmp(adr,'BROADCAST')            addr = [0 0 0 0 0 0 255 255];    
    elseif strcmp(adr,'UNKNOWN16')            addr = [ 255 254 ];   
    else addr = NaN;
    end    
end
