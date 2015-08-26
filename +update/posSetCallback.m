function posSetCallback( source, event, elePos, ailPos )
    ele=str2double(elePos.String);
    ail=str2double(ailPos.String);
    
    if and(~isnan(ele),~isnan(ail))
       serial.write(protocol.positionSetRequest(source.Parent.Parent.Parent.UserData,ele,ail));
    else
       msgbox({'Invalid position input.','Input is not a number'},'Invalid Input')
    end
end

