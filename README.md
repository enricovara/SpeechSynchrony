# Speech Synchronization Test
###M. Florencia Assaneo 2021

Files required to run and analyze the Speech Synchrony Test 

Run the Experiment/mainExperiment.m file to run the Synchrony Test as described in Lizcano et al. 2022. All other m files are functions called by the main experiment. Please select one of the two available versions of the test, and the number of runs, by editing the appropriate line in the mainExperiment file.

The script generates one folder per subjects within the folder named data. Each subject’s folder contains 2 audio files per run. One corresponds to the training and the called output_* are the ones corresponding to the main experiment (the one used to estimate the phase locking value).

Please run Analysis_matlab/SpeechSynchAnalysis.m to analyse the data as generated above.

All scripts should manage their own paths if left to do so.

Note:
- requires Psychtoolbox and Matlab Signal Processing Toolbox

For any doubt about the test email Florencia at : fassaneo@inb.unam.mx