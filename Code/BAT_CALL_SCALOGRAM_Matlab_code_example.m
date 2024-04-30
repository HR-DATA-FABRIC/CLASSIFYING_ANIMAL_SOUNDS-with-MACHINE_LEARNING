%%
clc
clear all

% dirName = ''  % fill in the directory Labled with SPECIES NAMES  as subdirectories each containing .wav adio files
cd(dirName) %make it the current directory

files = dir(fullfile(dirName,'*.wav') );   %# list all *.xyz files
files = {files.name}';                      %'# file names 

numfiles = files;
for k=1:length(numfiles)
  numfiles{k}=[num2str(k), ' ',numfiles{k}];
end

disp(numfiles)
clear k,numfiles

%%
sel =1;
filName = char(files(sel))
select = [dirName filName]
[y,fs] = audioread(select,'native');

%signal length
% shorten signal length by dividing by N
N=100
sigLength = round(length(y)/N)



%Set the cutoff to 100% so that the highest frequency wavelet bandpass filter peaks at the Nyquist frequency 
[minfreq,maxfreq] = cwtfreqbounds(sigLength,fs,cutoff=100)
sample=double(y(1:sigLength));
fb = cwtfilterbank(SignalLength=length(sample), ...
    SamplingFrequency=fs, ...
    VoicesPerOctave=12);
% WT: Continuous wavelet transform with filter bank
% wt(fb,x) returns the frequencies f corresponding to the scales (rows) of cfs if the 
% SamplingPeriod property is not specified in the CWT filter bank fb. 
% If you do not specify a sampling frequency, f is in cycles/sample.
[cfs,frq] = wt(fb,sample);
t = [0:length(sample) - 1].' * (1/fs);

f = figure(100)
f.GraphicsSmoothing = 'off';
pcolor(t,frq,abs(cfs))
colorbar
set(gca,"yscale","log")
shading interp
axis tight

ylim([min(frq)*10 max(frq)])
title("Scalogram")
xlabel("Time (s)")
ylabel("Frequency (Hz)")


%% SAVE SCALOGRAM as .jpg immage file
exportgraphics(f,'XX.jpg','Resolution',300)

%%
% Read the RGB image matrix
imag = imread('XX.jpg');

% Get the size of the image
[height, width, channels] = size(imag);

% Specify the coordinates of the region that you want to crop
crop_region = [5 5 width-50 height-50];

% Crop the image
cropped_image = imcrop(imag, crop_region);

% Display the result
imshow(cropped_image);
imwrite(cropped_image,'YY.jpg')
