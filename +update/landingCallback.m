function landingCallback( source, event )
 serial.write(protocol.landRequest(source.Parent.Parent.Parent.UserData,source.UserData));
end

