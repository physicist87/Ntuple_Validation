#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_8" "DoubleEG_Run2016F_e_16" "DoubleEG_Run2016F_e_24" "DoubleEG_Run2016F_e_32" "DoubleEG_Run2016F_e_40" "DoubleEG_Run2016F_e_48" "DoubleEG_Run2016F_e_56" "DoubleEG_Run2016F_e_64" "DoubleEG_Run2016F_e_72" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
