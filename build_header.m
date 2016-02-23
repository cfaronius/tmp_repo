function [header] = build_header(accessAddress)

    preambleSequence = '10101010';

    if (accessAddress(length(accessAddress)) == 1)
        preamble = fliplr(preambleSequence);
    else
        preamble = preambleSequence;
    end

    header = strcat(fliplr(preamble), fliplr(accessAddress));

end

