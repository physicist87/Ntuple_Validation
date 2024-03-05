#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_5" "DoubleEG_Run2016D_20" "DoubleEG_Run2016D_35" "DoubleEG_Run2016D_50" "DoubleEG_Run2016D_65" "DoubleEG_Run2016D_80" "DoubleEG_Run2016D_95" "DoubleEG_Run2016D_110" "DoubleEG_Run2016D_125" "DoubleEG_Run2016D_140" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
