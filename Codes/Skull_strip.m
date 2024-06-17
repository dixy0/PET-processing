%-----------------------------------------------------------------------
% Job saved on 06-May-2022 10:32:43 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
clear matlabbatch

matlabbatch{1}.spm.util.imcalc.input{1,1} = fullfile(['C:\PET_Munich\Analysis\sub-s003\ses-open\anat\msub-s003_ses-open_T1w.nii,1']);
matlabbatch{1}.spm.util.imcalc.input{2,1} = fullfile(['C:\PET_Munich\Analysis\sub-s003\ses-open\anat\c1sub-s003_ses-open_T1w.nii']);
matlabbatch{1}.spm.util.imcalc.input{3,1} = fullfile(['C:\PET_Munich\Analysis\sub-s003\ses-open\anat\c2sub-s003_ses-open_T1w.nii']);
matlabbatch{1}.spm.util.imcalc.input{4,1} = fullfile(['C:\PET_Munich\Analysis\sub-s003\ses-open\anat\c3sub-s003_ses-open_T1w.nii']);

matlabbatch{1}.spm.util.imcalc.output = ['ss_msub-s003_ses-open_T1w'];
matlabbatch{1}.spm.util.imcalc.outdir = {'C:\PET_Munich\Analysis\sub-s003\ses-open\anat'};
matlabbatch{1}.spm.util.imcalc.expression = 'i1.*((i2+i3+i4)>0.5)';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
