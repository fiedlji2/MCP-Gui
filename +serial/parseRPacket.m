function [ data, address ] = parseRPacket( inPacket )
address=inPacket(5:12);
data=inPacket(16:end-1);
end

