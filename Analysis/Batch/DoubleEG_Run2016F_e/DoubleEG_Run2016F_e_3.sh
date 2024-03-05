#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_2" "DoubleEG_Run2016F_e_10" "DoubleEG_Run2016F_e_18" "DoubleEG_Run2016F_e_26" "DoubleEG_Run2016F_e_34" "DoubleEG_Run2016F_e_42" "DoubleEG_Run2016F_e_50" "DoubleEG_Run2016F_e_58" "DoubleEG_Run2016F_e_66" "DoubleEG_Run2016F_e_74" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
