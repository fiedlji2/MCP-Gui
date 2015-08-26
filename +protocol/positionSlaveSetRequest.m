function packet = positionSlaveSetRequest( addr, slave1Addr, slave2Addr, slave3Addr, slave4Addr )
 packet=serial.createTRPacket(addr,[99 constants.commands('POSITION_SLAVE_SET') slave1Addr slave2Addr slave3Addr slave4Addr]);
end

