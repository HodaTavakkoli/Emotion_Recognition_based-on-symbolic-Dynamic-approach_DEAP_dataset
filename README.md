# Emotion_Recognition_based-on-symbolic-Dynamic-approach_DEAP_dataset

Processed and clssify the DEAP dataset on basis of symbolic Time Series Analysis and similarity index.

At first, Find the DEAP dataset here: (you need to seek permission by sending a mail to the authorized personell to download it) http://www.eecs.qmul.ac.uk/mmv/datasets/deap/

this dataset consists of 32 subject signals and when you download the data you have 32 .mat files, for example, s01.mat, ... , s32.mat.
Each folder consist of 'data' and 'labels' files. in 'data' file you have the data of each subject(for example subject 1), as a 40*40*8064 matlab matrix. the first '40' indicates the number of each movie, and the second '40' indicates the number of recorded eeg and some other biosignals. we need just 32 channels from the beggining of the signal. when you separate this 32 channels for each subject and all movie of each subject, you have to save them as the name of, for example : 'Part1_Movie1'(means Participant number 1, Movie1) , 'Part1_Movie40'(Means Participants number 1, Movie 40) and do this for all subjects and all Movies of each subject and keep them in the directory that you save and want to run the '.m' files.
Now, your data are ready and you can run the programs.
At first you have to run the program 'P1_Make_Structure.m' to make and save all data in a structure and you can use this structre in the following program.
in 'P3_Make_Symbolic_Fields.m', the symbolic signal will be create and after that you can use each program for classification the position of 2,3,4 and 5 groups of emotional states.

