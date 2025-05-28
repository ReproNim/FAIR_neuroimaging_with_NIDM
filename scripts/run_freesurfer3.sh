#!/bin/bash

for sub in sub-021 sub-022 sub-023 sub-024 sub-025 sub-026 sub-027 sub-028 sub-029 sub-030;do
    printf "************* Processing ${sub} *************\n"
    docker run -it --rm \
    -v /media/sehatton/ds004604_fs/license/license.txt:/usr/local/freesurfer/.license \
    -e FS_LICENSE='/usr/local/freesurfer/.license' \
    -v /media/sehatton/ds004604_fs/derivatives/freesurfer:/home/freesurfer/subjects \
    -v /media/sehatton/ds004604_fs/:/data \
    -e SUBJECTS_DIR='/home/freesurfer/subjects' \
    freesurfer/freesurfer:7.4.1 \
    recon-all -all -s ${sub} -i /data/${sub}/anat/${sub}_T1w.nii.gz
done
