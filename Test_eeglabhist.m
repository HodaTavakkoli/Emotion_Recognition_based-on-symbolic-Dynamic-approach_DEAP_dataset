% EEGLAB history file generated on the 30-Nov-2020
% ------------------------------------------------

EEG.etc.eeglabvers = '2019.x (dev)'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_importdata('dataformat','matlab','nbchan',0,'data','/Users/hodatavakkoli/Documents/MATLAB/Codes & Data/New_26 Azar 98_Raw Data/Raw_Part1_Movie3.mat','srate',128,'pnts',0,'xmin',0,'chanlocs','/Users/hodatavakkoli/Documents/MATLAB/Codes & Data/New_26 Azar 98_Raw Data/DEAP_loc_Twente.ced');
EEG.setname='Raw_Part_Movie3';
EEG = eeg_checkset( EEG );
EEG = pop_saveset( EEG, 'filename','Part1_Movie3_example.set','filepath','/Users/hodatavakkoli/Documents/MATLAB/Codes & Data/New_26 Azar 98_Raw Data/');
EEG = eeg_checkset( EEG );
