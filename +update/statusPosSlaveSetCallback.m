function  statusPosSlaveSetCallback( source, event )
  serial.write(protocol.positionSlaveSetStatusRequest(source.Parent.Parent.Parent.UserData));
end

