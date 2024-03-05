#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016F_e 
cmsenv 
set inputlists = ("DoubleEG_Run2016F_e_5" "DoubleEG_Run2016F_e_13" "DoubleEG_Run2016F_e_21" "DoubleEG_Run2016F_e_29" "DoubleEG_Run2016F_e_37" "DoubleEG_Run2016F_e_45" "DoubleEG_Run2016F_e_53" "DoubleEG_Run2016F_e_61" "DoubleEG_Run2016F_e_69" "DoubleEG_Run2016F_e_77" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016F_e 
   ./TopMass_analysis DoubleEG_Run2016F_e/${i}.list DoubleEG_Run2016F_e/${i}.txt 
end 
