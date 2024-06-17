clear

% Read PET information json file
fname = 'C:\PET_Munich\Data\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_pet.json'; 
fid = fopen(fname); 
raw = fread(fid,inf); 
str = char(raw'); 
fclose(fid); 
val = jsondecode(str);

% Plot frame duration for each frame
figure; bar(val.FrameDuration)
title('Frame Duration')
xlabel('Frames')
ylabel('Seconds')



% Read PET image header information
METADATA = niftiinfo('C:\PET_Munich\Data\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_pet.nii.gz');



% Read PET image
v = spm_vol('C:\PET_Munich\Data\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_pet.nii.gz');
y = spm_read_vols(v);

% Select the middle sagittal slices for all the frames
I = squeeze(y(size(y,1)/2,:,:,:));
% Rotate the matrices for diaplay
J = imrotate(I,90);

% Plot all the frames using montage
figure; montage(J,'DisplayRange',[0 20000])



% Read blood sample recording data TSV file
T_recording = readtable('C:\PET_Munich\Data\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_recording-autosampler_blood.tsv','FileType','text');

% Plot plasma radioactivity data
figure; plot(T_recording.time,T_recording.plasma_radioactivity,'-d');
title('Plasma Radioactivity')
xlabel('Seconds')
ylabel('Bq/mL')


