% This program opens an MP3 file and creates a file with 16-bit audio
% samples at a sampling rate of 8 kHz. The generated audio samples are in 2's
% complement format and can be directly sent to the WM8731 audio codec
%
% Written by Daniel Leon-Salas

clear all;

fname_in  = 'C:\Users\ykozmenk\OneDrive - purdue.edu\Classes\ECET 349\Lab9_SRAM_Audio\mission_impossible.mp3';  % input file name
fname_out = 'C:\Users\ykozmenk\OneDrive - purdue.edu\Classes\ECET 349\Lab9_SRAM_Audio\mission_impossible.mus';  % output file name

[s, fs] = audioread(fname_in, 'native'); % read input file into array s, fs is the sampling rate 
s  = double(s);
Ts = 1/fs;                               % Ts=sampling period, fs=sampling frequency

%--------------------------------------------------------------------------
% plot original signal
t = [1:1:length(s)]/fs;
figure; plot(t, s);
grid on;
ylabel('Amplitude');
xlabel('Time (s)');
title(sprintf('Original signal - length=%d samples - f_s=%4.2f Hz', length(s), fs));
axis([min(t) max(t) -1.0 1.0]);

[len, n_channels] = size(s);
if n_channels > 1           % convert to mono if stereo
  s = s(:,1) + s(:,2);                  
end    

%--------------------------------------------------------------------------
% change sampling rate to 8 kHz
fs_new = 8000;                % desired sampling rate
if fs_new <= fs
  R   = round(fs/fs_new);
  fs2 = fs/R;                 % actual sampling rate
  s2 = decimate(s, R);        % downsample 
else
  R   = round(fs_new/fs);
  fs2 = fs*R;                 % actual sampling rate
  s2  = interp(f, R);         % upsample 
end
Ts2 = 1/fs2;

%--------------------------------------------------------------------------
% play the first 20 seconds of original audio at the original sampling rate
N = round(20/Ts);
sound(s(1:N), fs);    % play a few seconds through PC speakers

%--------------------------------------------------------------------------
% play the first 20 seconds of downsampled audio at the new sampling rate
N = round(20/Ts2);
sound(s2(1:N), fs2);  % play a few seconds through PC speakers

%--------------------------------------------------------------------------
% convert downsampled audio to 16-bit format (2's complement)
n_bits = 16;
s3     = round(s2*2^(n_bits-1));
for n=1:length(s3)
  if(s3(n) < 0)
    s3(n) = 2^n_bits - abs(s3(n));
  end
end

%--------------------------------------------------------------------------
% write 16-bit downsampled audio to output file
RAM_SIZE = 262144;          % number of words in the IS61LV25616 SRAM chip 
len = length(s3);
if len >= RAM_SIZE
  s3 = s3(1:RAM_SIZE);
else
  s3(len+1:RAM_SIZE) = 0;  
end    
fid = fopen(fname_out, 'wb');
fwrite(fid, s3, 'ubit16');
fclose(fid);
