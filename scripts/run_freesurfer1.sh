#!/bin/bash

#for sub in sub-001 sub-002 sub-003 sub-004 sub-005 sub-006 sub-007 sub-008 sub-009 sub-010;do
for sub in sub-001;do
    printf "************* Processing ${sub} *************\n"
    docker run -it --rm \
    -v /media/sehatton/ds004604/license/license.txt:/usr/local/freesurfer/.license \
    -e FS_LICENSE='/usr/local/freesurfer/.license' \
    -v /media/sehatton/ds004604/derivatives/freesurfer:/home/freesurfer/subjects \
    -e SUBJECTS_DIR='/home/freesurfer/subjects' \
    -e FS_ALLOW_DEEP=1 \
    vnmd/freesurfer_8.0.0 \
    recon-all -s ${sub} -i SUBJECTS_DIR/${sub}_T1w.nii.gz
done
