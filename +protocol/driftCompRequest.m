function packet = driftCompRequest( addr, enable )
 packet=serial.createTRPacket(addr,[99 constants.commands('DRIFT_COMPENSATION') enable]);

end

