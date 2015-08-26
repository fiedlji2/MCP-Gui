function numb = landing( landState )
    if strcmp(landState,'ON_GROUND')              numb = 0;
    elseif strcmp(landState,'LANDING')            numb = 1;
    elseif strcmp(landState,'STABILIZATION')      numb = 2;     
    elseif strcmp(landState,'TAKE OFF')           numb = 3;
    elseif strcmp(landState,'FLIGHT')          	 numb = 4;          
    else numb = NaN; 
    end    
end
