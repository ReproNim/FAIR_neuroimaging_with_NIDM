#!/bin/bash

for sub in sub-041 sub-042 sub-043 sub-044 sub-045 sub-046 sub-047 sub-048 sub-049 sub-050;do
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
