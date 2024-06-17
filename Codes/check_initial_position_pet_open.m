% PET processing
% Plot the PET image and check its intitial position with reference to the MNI template
% Xin Di, June 17, 2024

clear

addpath('C:\Work\Software\spm12')

% Read header information of the PET image
METADATA = niftiinfo('C:\PET_Munich\Data\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_pet.nii.gz');

% The images to be ploted. The first image is the last PET image, and the second image is the T1 template in SPM.  
imgs = char(['C:\PET_Munich\Data\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_pet.nii.gz,' num2str(METADATA.ImageSize(4))],...
        'C:\Work\Software\spm12\canonical\single_subj_T1.nii');
    
% Plot the two images using SPM Check Registration function
spm_check_registration(imgs);  % Plot the two images using Check Registration

% Display contour of 1st image onto 2nd
spm_orthviews('contour','display',1,2);

