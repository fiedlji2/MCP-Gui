function packet = landRequest( addr, enable )
 packet=serial.createTRPacket(addr,[99 constants.commands('LANDING') enable]);

end

