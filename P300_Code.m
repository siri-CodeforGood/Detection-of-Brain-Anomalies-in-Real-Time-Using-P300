[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename','S1_EEG.set','filepath','C:\\Users\\Siri\\Desktop\\8th Sem Project\\Test_Data\\S1\\');
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = pop_eegfiltnew(EEG, [],30,220,0,[],1);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 1,'setname','S1_EEG_FIR','gui','off'); 
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = pop_continuousartdet( EEG , 'ampth',  200, 'chanArray',  1:16, 'colorseg', [ 0.83 0.82 0.79], 'firstdet', 'on', 'forder',  100, 'numChanThreshold',  1, 'stepms',  250, 'threshType', 'peak-to-peak', 'winms',  500 ); % GUI: 29-May-2019 13:09:01
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
EEG = eeg_checkset( EEG );
EEG = pop_epoch( EEG, {  '112'  }, [-1  1], 'newname', 'S1_EEG_FIR_car epochs', 'epochinfo', 'yes');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_rmbase( EEG, [-1000     0]);
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 3,'setname','S1_EEG_FIR_car epochs_1','gui','off'); 
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
extracttrials('C:\Users\Siri\Desktop\8th Sem Project\p300soft\subject1\subject1\session1','s1')
EP_den_v2
