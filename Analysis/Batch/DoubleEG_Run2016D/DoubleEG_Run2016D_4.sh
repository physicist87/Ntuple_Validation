#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_3" "DoubleEG_Run2016D_18" "DoubleEG_Run2016D_33" "DoubleEG_Run2016D_48" "DoubleEG_Run2016D_63" "DoubleEG_Run2016D_78" "DoubleEG_Run2016D_93" "DoubleEG_Run2016D_108" "DoubleEG_Run2016D_123" "DoubleEG_Run2016D_138" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
