function packet = landStatusRequest( addr )
 packet=serial.createTRPacket(addr,[99 constants.commands('LANDING') constants.general('GET_STATUS')]);
end