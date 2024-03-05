#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_4" "DoubleEG_Run2016D_19" "DoubleEG_Run2016D_34" "DoubleEG_Run2016D_49" "DoubleEG_Run2016D_64" "DoubleEG_Run2016D_79" "DoubleEG_Run2016D_94" "DoubleEG_Run2016D_109" "DoubleEG_Run2016D_124" "DoubleEG_Run2016D_139" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
