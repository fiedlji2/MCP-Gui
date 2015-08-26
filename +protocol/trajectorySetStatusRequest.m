function packet = trajectorySetStatusRequest( addr )
 packet=serial.createTRPacket(addr,[99 constants.commands('TRAJECTORY_POINTS') constants.general('GET_STATUS')]);
end