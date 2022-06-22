function sample_seq = GenerateSamples(bit_seq,fs)
%
% Inputs:
%   bit_seq:    Input bit sequence
%   fs:         Number of samples per bit
% Outputs:
%   sample_seq: The resultant sequence of samples
%
% This function takes a sequence of bits and generates a sequence of
% samples as per the input number of samples per bit

sample_seq = zeros(size(bit_seq*fs));

%%% WRITE YOUR CODE FOR PART 2 HERE
x=1;
for i=1:length(bit_seq)
    tempVar=bit_seq(i);
    for j=x:x+fs-1
        sample_seq(j)=tempVar;
    end
    x=x+fs;
end
%%%