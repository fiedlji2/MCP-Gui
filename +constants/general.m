function numb = general( type )
    if strcmp(type,'DISABLE')              numb = 0;
    elseif strcmp(type,'ENABLE')            numb = 1;
    elseif strcmp(type,'GET_STATUS')      numb = 255;       
    else numb = NaN;    
    end    
end
