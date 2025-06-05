#!/bin/bash

for sub in sub-001 sub-002 sub-003 sub-004 sub-005 sub-006 sub-007 sub-008 sub-009 sub-010;do
 printf "************* Processing ${sub} *************\n"
    segstats2nidm -add_de -s /media/sehatton/ds004604/derivatives/freesurfer/${sub} -o /media/sehatton/ds004604/derivatives/freesurfer/${sub} -subjid ${sub} -forcenidm
done
