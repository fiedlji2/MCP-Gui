function packet = positionSlaveSetStatusRequest( addr )
 packet=serial.createTRPacket(addr,[99 constants.commands('POSITION_SLAVE_SET') constants.general('GET_STATUS')]);

end

