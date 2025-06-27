#!/bin/bash

for sub in sub-041 sub-042 sub-043 sub-044 sub-045 sub-046 sub-047 sub-048 sub-049 sub-050;do
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
