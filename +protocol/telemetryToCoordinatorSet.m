function packet = telemetryToCoordinatorSet( addr,type,enable )
    packet=serial.createTRPacket(addr,[99 constants.commands('TELEMETRY_COORDINATOR') enable type]);
end

