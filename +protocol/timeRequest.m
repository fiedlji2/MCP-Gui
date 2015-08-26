function packet = timeRequest( addr, time )
 packet=serial.createTRPacket(addr,[99 constants.commands('TIME') serial.int2data(time)]);

end

