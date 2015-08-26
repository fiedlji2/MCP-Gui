function syncTelCallback( source, event )
serial.write(protocol.telemetryToCoordinatorStatusRequest(source.Parent.Parent.UserData));
end

