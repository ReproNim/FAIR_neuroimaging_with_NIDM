#!/bin/bash

for sub in sub-031 sub-032 sub-033 sub-034 sub-035 sub-036 sub-037 sub-038 sub-039 sub-040;do
    printf "************* Processing ${sub} *************\n"
    docker run -it --rm \
    -v /media/sehatton/ds004604/license/license.txt:/usr/local/freesurfer/.license \
    -e FS_LICENSE='/usr/local/freesurfer/.license' \
    -v /media/sehatton/ds004604/derivatives/freesurfer:/home/freesurfer/subjects \
    -e SUBJECTS_DIR='/home/freesurfer/subjects' \
    -e FS_ALLOW_DEEP=1 \
    -v /media/sehatton/ds004604/:/home/bids \
    freesurfer/freesurfer:7.4.1 \
    recon-all -s ${sub} -i /home/bids/${sub}/anat/${sub}_T1w.nii.gz
done
