%ble.m

nPackets = 100;
packetLength = 10*8;

accessAdress = '10001110100010011011111011010110';
crcInit = dec2bin(hex2dec('555555'));
channelIndex = '0000001'; %channel 1

header = build_header(accessAdress);

for i=1:nPackets
    data = randn(1,packetLength)>0;   
    crc = crc24(crcInit, data);
    data = [data crc];
    data = whitening( channelIndex, data);
    
 
    
end


