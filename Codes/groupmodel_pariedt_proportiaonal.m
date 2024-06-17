%-----------------------------------------------------------------------
% Job saved on 04-Jun-2024 13:41:07 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
clear matlabbatch

subjfolder = dir('C:\PET_Munich\Analysis\sub*');


matlabbatch{1}.spm.stats.factorial_design.dir = {'C:\PET_Munich\Analysis\group\Open_closed'};

for subji = 1:length(subjfolder)
    matlabbatch{1}.spm.stats.factorial_design.des.pt.pair(subji).scans = {['C:\PET_Munich\Analysis\' subjfolder(subji).name '\ses-open\pet\swmean' subjfolder(subji).name '_ses-open_task-rest_pet.nii,1']
                                                                  ['C:\PET_Munich\Analysis\' subjfolder(subji).name '\ses-closed\pet\swmean' subjfolder(subji).name '_ses-closed_task-rest_pet.nii,1']};
end

matlabbatch{1}.spm.stats.factorial_design.des.pt.gmsca = 0;
matlabbatch{1}.spm.stats.factorial_design.des.pt.ancova = 0;
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {'C:\Work\Software\spm12\tpm\mask_ICV.nii,1'};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_mean = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_yes.gmscv = 50;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 2;  % 2, proportional; 3, ANCOVA
