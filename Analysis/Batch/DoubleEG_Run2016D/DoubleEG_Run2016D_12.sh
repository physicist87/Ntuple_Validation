#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_11" "DoubleEG_Run2016D_26" "DoubleEG_Run2016D_41" "DoubleEG_Run2016D_56" "DoubleEG_Run2016D_71" "DoubleEG_Run2016D_86" "DoubleEG_Run2016D_101" "DoubleEG_Run2016D_116" "DoubleEG_Run2016D_131" "DoubleEG_Run2016D_146" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
