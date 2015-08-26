function data = float2data( number )
    hex=num2hex(single(number));
    data = [hex2dec(hex(7:8)) hex2dec(hex(5:6)) hex2dec(hex(3:4)) hex2dec(hex(1:2))];
end

