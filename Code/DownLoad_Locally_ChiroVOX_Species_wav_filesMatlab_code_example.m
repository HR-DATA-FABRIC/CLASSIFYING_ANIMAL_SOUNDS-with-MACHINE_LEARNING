%%   READ DTA TABE from ChitoBOV  bat call database
% TAKES 30 seconds to read the table
clc;
clear all;

% DATA MAP on PC3090
dirName =  '.\BAT_VOCALISATIONS\ChiroVOX\'
cd(dirName) %make it the current directory


%%%% READS the SPECIES TABLE fom the .php file
T=readtable("https://www.chirovox.org/species_map.php",...
    FileType="html",ReadVariableNames=true,ThousandsSeparator=",")

%%
% Get a list of all unique species in the table
unique_species = unique(T.Species);

% Count the number of recordings (occurences) of each species in the table
recordings_counts_per_species = groupcounts(T.Species);
number_of_species = length(recordings_counts_per_species);

% Display the results
% disp(species_counts);

T2 = table(unique_species,recordings_counts_per_species);

% DETERMINE Species with 20  to 30 recordings
sel20 = T2.recordings_counts_per_species>=20 & T2.recordings_counts_per_species<=30
sel20species = T2.unique_species(sel20);
Tsel20= T2(sel20,:)

% example
% select all records for the 1e species in the sel20species list
% f1 = T.Details(find(sel20species(1)==T.Species))

%%

% SAVE the selected records
%  go trhough the list of selected species

%%cd  nndataset\
for k=1:length(sel20species)
   % set root directory  to store data
   cd('D:\Dataset\bat_data\nndata_ChiroVox')
   % create map with species name
   sp=sel20species(k,:);   % species name
   mkdir(sp)
   % select de species map
    cd(sp)

    %%%%  DETERMINE record filenames voor a 
    %%%% SINGLE species
        url = 'https://www.chirovox.org/show_allinfo.php?q=';
        durl='https://chirovox.elte.hu/sounds/';
        S=[];
        F=[];
         records_list = T.Details(find(sel20species(k)==T.Species))

            for i=1:length(records_list)
            % create comple URL + recorddname
            surl=strcat(url, records_list(i));
            A = webread(surl);
                    % some files are restricted: 
                    % ==> Access_type: restricted
                    % test if  sel in not empty

                    sel = strfind(A,'.WAV');
                    if (~isempty(sel))
                            
                            F{i} = strcat(durl,A(sel(1)-18:sel(1)+3));  % complete adres
                            S{i} = A(sel(1)-18:sel(1)+3);  % filename 

                            %  SAVE FILE FROM URL
                            % UNCOMMENT ONLY when  you want to 
                            %  DOWNLOAD + SAVE locally
                            
                            websave( char(S(i)) , char(F(i)),weboptions('Timeout',60))
                    end

            end % records for single species
       
        if (~isempty(sel))   % test if  sel in not empty
        T4 = cell2table(S.');
        T4.Properties.VariableNames = ["record name"]
        end

    cd ./..
end % loop for each selected species

%%
% COUNT wav files that are STORED
% Specify the root folder where you want to search for .wav files
rootFolder ='D:\Dataset\bat_data\nndata_ChiroVox\';
S = dir(rootFolder);

% Initialize arrays to store the results
subfolderNames = {};
wavCounts = [];

for i = 1:numel(S)
    if S(i).isdir && ~ismember(S(i).name, {'.', '..'})
        subfolderPath = fullfile(rootFolder, S(i).name);
        wavFiles = dir(fullfile(subfolderPath, '*.wav'));
        wavCount = numel(wavFiles);
        
        subfolderNames = [subfolderNames; {S(i).name}];
        wavCounts = [wavCounts; wavCount];
    end
end

% Create a table with the results
resultTable = table(subfolderNames, wavCounts, 'VariableNames', {'Subfolder', 'numWavFiles'});

% Display the table
disp(resultTable)



%%
% Specify the root folder where you want to search for .wav files
rootFolder ='D:\Dataset\bat_data\nndata_ChiroVox\';

% Use the dir function to list all .wav files in the root folder and subfolders
fileExtension = '.wav';
dirInfo = dir(fullfile(rootFolder, ['**', filesep, ['*' fileExtension]]));

% Initialize a structure array to store file names and their durations
fileData = struct('FileName', {}, 'DurationSeconds', {});

% Loop through the .wav files and determine their durations
for i = 1:numel(dirInfo)
    if ~dirInfo(i).isdir
        % Get the full file path
        filePath = fullfile(dirInfo(i).folder, dirInfo(i).name);
        
        % Read the audio file using audioread
        [audioData, sampleRate] = audioread(filePath);
        
        % Calculate the duration of the audio file in seconds
        durationSeconds = size(audioData, 1) / sampleRate;

        % Check if the duration is between 10 and 120 seconds
        if durationSeconds > 10 && durationSeconds < 120
            % Store the file name and duration in the structure
            fileData(end+1).FileName = dirInfo(i).name;
            fileData(end).DurationSeconds = durationSeconds;
        else
            % If the duration is less than 10 seconds, delete the file
            delete(filePath);
        end
        


    end
end

% Convert the structure array to a table
resultTable = struct2table(fileData);

% Display the table with file names and their durations
disp(resultTable);




%%
% create tainable datasets + labels
cd('D:\Dataset\bat_data\')
audiods = audioDatastore('nndata_ChiroVox', ...
    'IncludeSubfolders',true, ...
    'LabelSource','foldernames')

