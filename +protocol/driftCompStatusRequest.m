function packet = driftCompStatusRequest( addr )
 packet=serial.createTRPacket(addr,[99 constants.commands('DRIFT_COMPENSATION') constants.general('GET_STATUS')]);
end