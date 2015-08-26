function packet = controllerRequest( addr, controller )
 packet=serial.createTRPacket(addr,[99 constants.commands('CONTROLLERS') controller]);
end

