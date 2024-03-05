#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_7" "DoubleEG_Run2016C_16" "DoubleEG_Run2016C_25" "DoubleEG_Run2016C_34" "DoubleEG_Run2016C_43" "DoubleEG_Run2016C_52" "DoubleEG_Run2016C_61" "DoubleEG_Run2016C_70" "DoubleEG_Run2016C_79" "DoubleEG_Run2016C_88" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
