#!/bin/bash

for sub in sub-001 sub-002 sub-003 sub-004 sub-005 sub-006 sub-007 sub-008 sub-009 sub-010;do
    printf "************* Processing ${sub} *************\n"
    docker run -it --rm \
    -v /media/sehatton/FAIR_neuroimaging_with_NIDM/license/license.txt:/usr/local/freesurfer/.license \
    -e FS_LICENSE='/usr/local/freesurfer/.license' \
    -v /media/sehatton/FAIR_neuroimaging_with_NIDM/derivatives/freesurfer:/home/freesurfer/subjects \
    -v /media/sehatton/FAIR_neuroimaging_with_NIDM/:/data \
    -e SUBJECTS_DIR='/home/freesurfer/subjects' \
    freesurfer/freesurfer:7.4.1 \
    recon-all -all -s ${sub} -i /data/${sub}/anat/${sub}_T1w.nii.gz
done
