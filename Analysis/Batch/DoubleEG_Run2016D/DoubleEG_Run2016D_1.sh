#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_15" "DoubleEG_Run2016D_30" "DoubleEG_Run2016D_45" "DoubleEG_Run2016D_60" "DoubleEG_Run2016D_75" "DoubleEG_Run2016D_90" "DoubleEG_Run2016D_105" "DoubleEG_Run2016D_120" "DoubleEG_Run2016D_135" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
