function packet = timeStatusRequest( addr )
 packet=serial.createTRPacket(addr,[99 constants.commands('TIME') constants.general('GET_STATUS')]);
end