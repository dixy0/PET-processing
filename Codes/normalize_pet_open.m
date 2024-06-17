%-----------------------------------------------------------------------
% Job saved on 04-Jun-2024 12:01:25 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
clear matlabbatch

matlabbatch{1}.spm.spatial.normalise.write.subj(1).def = {['E:\PET_Munich\Analysis\sub-s003\ses-open\anat\y_sub-s003_ses-open_T1w.nii']};
matlabbatch{1}.spm.spatial.normalise.write.subj(1).resample = {['E:\PET_Munich\Analysis\sub-s003\ses-open\pet\meansub-s003_ses-open_task-rest_pet.nii,1']};

matlabbatch{1}.spm.spatial.normalise.write.woptions.bb = [-78 -112 -70
                                                          78 76 85];
matlabbatch{1}.spm.spatial.normalise.write.woptions.vox = [1 1 1];
matlabbatch{1}.spm.spatial.normalise.write.woptions.interp = 4;
matlabbatch{1}.spm.spatial.normalise.write.woptions.prefix = 'w';
