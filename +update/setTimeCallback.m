function setTimeCallback( source, event )
    serial.write(protocol.timeRequest(source.Parent.Parent.UserData,posixtime(datetime('now'))));
end

