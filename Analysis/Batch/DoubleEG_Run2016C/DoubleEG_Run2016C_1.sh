#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_9" "DoubleEG_Run2016C_18" "DoubleEG_Run2016C_27" "DoubleEG_Run2016C_36" "DoubleEG_Run2016C_45" "DoubleEG_Run2016C_54" "DoubleEG_Run2016C_63" "DoubleEG_Run2016C_72" "DoubleEG_Run2016C_81" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
