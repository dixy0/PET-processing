%-----------------------------------------------------------------------
% Job saved on 06-May-2022 15:19:55 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
clear matlabbatch

METADATA = niftiinfo(['C:\PET_Munich\Analysis\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_pet.nii']);

for imagei = 1:5
    matlabbatch{1}.spm.spatial.realign.estwrite.data{1}{imagei,1} = ['C:\PET_Munich\Analysis\sub-s003\ses-open\pet\sub-s003_ses-open_task-rest_pet.nii,' num2str(METADATA.ImageSize(4)-5+imagei)];
end
%%
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.quality = 0.9;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.sep = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.fwhm = 5;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.rtm = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.interp = 2;
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.eoptions.weight = '';
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.which = [0 1];   % mean image only
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.interp = 4;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.wrap = [0 0 0];
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.mask = 1;
matlabbatch{1}.spm.spatial.realign.estwrite.roptions.prefix = 'r';

