function numb = controllers( contType )
    if strcmp(contType,'OFF')              numb = 1;
    elseif strcmp(contType,'ALTITUDE')     numb = 2;
    elseif strcmp(contType,'MPC')          numb = 3;     
    else numb = NaN; 
    end    
end
