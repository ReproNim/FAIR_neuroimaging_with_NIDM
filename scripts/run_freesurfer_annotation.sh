#!/bin/bash


for sub in sub-*;do
    printf "************* Processing ${sub} *************\n"
    segstats2nidm -add_de -s /media/sehatton/ds004604/derivatives/freesurfer/${sub} -o /media/sehatton/ds004604/derivatives/freesurfer/${sub} -subjid ${sub} -forcenidm
done
