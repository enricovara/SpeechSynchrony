%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Speech Synchrony Test %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Runs the Speech Synchrony Test decribed in Lizcano et al. 2022.
%%% The researcher should state which version of the test wants to be
%%% conducted.
%%% M. Florencia Assaneo 2021 fassaneo@inb.unam.mx

clearvars
close all

% Change the current directory to the directory of the executing file
cd(fileparts(mfilename('fullpath')));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Experiment Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num_runs = 2;
version='ExpAcc'; % Chose the version of the test ImpFix for the Implicit Fixed or ExpAcc for the Explicit Accelerated

% Declare Subject's name to create the folder accordingly
subject= inputdlg('Name');
subject{1} = fullfile('..', 'data', ['s_' subject{1}]);
mkdir(subject{1});

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% General instructions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fh=getkeyn;
text=['Welcome! You will now do various tests. The instructions will be explained to you as we go.'...
    ' Press the SpaceBar to get started. Thank you!'];
fh=instruction(fh, text, ' ')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% The subjects fix the intensity as high as possible
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
equalize_noise(fh, ['WAVS/volume_' version '.wav']);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TWO runs of the synchrony main task
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for irun=1:num_runs
    ssst(irun, subject{1},fh,version);
    if irun~=num_runs
        text = ['You finished run number ' num2str(irun) '. The task will be repeated ' num2str(num_runs-irun) ' more times. '...
        'Press the SpaceBar to resume the experiment.'];
        fh=instruction(fh, text, ' ');
    end
end

text=['Thank you very much! You finished the experiment. '...
    ' Press the SpaceBar to close this window.'];
fh=instruction(fh, text, ' ');

close all;
