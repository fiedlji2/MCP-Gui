function data = int2data( number )
    hex=dec2hex(uint32(number),8);
    data = [hex2dec(hex(7:8)) hex2dec(hex(5:6)) hex2dec(hex(3:4)) hex2dec(hex(1:2))];

end

