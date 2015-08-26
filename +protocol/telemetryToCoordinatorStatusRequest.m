function packet = telemetryToCoordinatorStatusRequest( addr )
packet=serial.createTRPacket(addr,[99 constants.commands('TELEMETRY_COORDINATOR') constants.general('GET_STATUS')]);
end

