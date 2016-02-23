%% add_complex_noise.m
function [output] = add_complex_noise(s, SNR_dB)
    L = length(s);
    Ps = s*s'/L;
    SNR = 10^(SNR_dB/10);
    w = 1/sqrt(2).*(randn(1,L) + 1j*randn(1,L)); % Generate random noise vector
    w = w - sum(w)/L;
    w = w./ sqrt(w*w'/L);
    w = sqrt(Ps/SNR).*w;
    output = s + w;
end

