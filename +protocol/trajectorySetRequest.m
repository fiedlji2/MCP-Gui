function packet = trajectorySetRequest( addr, times, elevators, ailerons, altitudes )
 data=[];
 for i = 1:max(size(times))
    data=[data serial.int2data(times(i)) serial.float2data(elevators(i)) serial.float2data(ailerons(i)) serial.float2data(altitudes(i))];
 end    
 packet=serial.createTRPacket(addr,[99 constants.commands('TRAJECTORY_POINTS') max(size(times)) data]);

end

