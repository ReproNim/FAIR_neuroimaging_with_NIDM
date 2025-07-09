#!/bin/bash


for sub in sub-*;do
    printf "************* Processing ${sub} *************\n"
    segstats2nidm -add_de -s /media/sehatton/FAIR_neuroimaging/derivatives/freesurfer/${sub} -o /media/sehatton/FAIR_neuroimaging/derivatives/freesurfer/${sub} -subjid ${sub} -forcenidm
done
