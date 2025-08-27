#!/bin/bash

for sub in sub-041 sub-042 sub-043 sub-044 sub-045 sub-046 sub-047 sub-048 sub-049 sub-050;do
    printf "************* Processing ${sub} *************\n"
    segstats2nidm -add_de -s /media/sehatton/FAIR_neuroimaging/derivatives/freesurfer/${sub} -subjid ${sub} -n /media/sehatton/FAIR_neuroimaging/nidm.ttl
done
