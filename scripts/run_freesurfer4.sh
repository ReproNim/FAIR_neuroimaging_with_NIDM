#!/bin/bash

for sub in sub-031 sub-032 sub-033 sub-034 sub-035 sub-036 sub-037 sub-038 sub-039 sub-040;do
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
