#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_8" "DoubleEG_Run2016C_17" "DoubleEG_Run2016C_26" "DoubleEG_Run2016C_35" "DoubleEG_Run2016C_44" "DoubleEG_Run2016C_53" "DoubleEG_Run2016C_62" "DoubleEG_Run2016C_71" "DoubleEG_Run2016C_80" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
