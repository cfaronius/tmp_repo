
function [crc] = crc24(crcInit, data)
% This function calculates the CRC-24 checksum
%

    gx = zeros(1, 24);
    gx( [24 10 9 6 4 3 1] ) = 1;

    data_len = length(data);

    result = dec2bin(0 , 24 ) - '0';
    for k=1:data_len
        temp = dec2bin( data(k),24 ) - '0';
        for m = 1:24
            if result(24) ~= temp(m)
                result(1:24) = [ 0 result(1:23) ];
                result = xor(result,gx);
            else
                result(1:24) = [0 result(1:23)];
            end
        end
    end

    crc = fliplr(result);

end

