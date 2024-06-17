%-----------------------------------------------------------------------
% Job saved on 07-May-2022 10:01:08 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
clear matlabbatch

matlabbatch{1}.spm.spatial.coreg.estimate.ref = {['E:\PET_Munich\Analysis\sub-s003\ses-open\anat\ss_msub-s003_ses-open_T1w.nii,1']};
matlabbatch{1}.spm.spatial.coreg.estimate.source = {['E:\PET_Munich\Analysis\sub-s003\ses-open\pet\meansub-s003_ses-open_task-rest_pet.nii']};

matlabbatch{1}.spm.spatial.coreg.estimate.other = {''};
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{1}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
