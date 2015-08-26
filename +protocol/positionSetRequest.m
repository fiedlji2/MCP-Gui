function packet = positionSetRequest( addr, elevator, aileron )
 packet=serial.createTRPacket(addr,[99 constants.commands('POSITION_SET') serial.float2data(elevator) serial.float2data(aileron)]);

end

