function [ whitend ] = whitening( init, data)

    gx = zeros(1, 7);
    gx( [7 4] ) = 1;

    data_len = length(data);
    whitend = zeros(data_len);

    result = dec2bin(0 , 7 ) - '0';
    for k=1:data_len
        temp = dec2bin( data(k),7 ) - '0';
        whitend(k) = temp;
        for m = 1:7
            if result(7) ~= temp(m)
                result(1:7) = [ 0 result(1:6) ];
                result = xor(result,gx);
            else
                result(1:7) = [0 result(1:6)];
            end
        end
    end

end

