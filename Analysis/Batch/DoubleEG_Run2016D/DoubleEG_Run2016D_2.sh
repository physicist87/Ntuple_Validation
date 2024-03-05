#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_1" "DoubleEG_Run2016D_16" "DoubleEG_Run2016D_31" "DoubleEG_Run2016D_46" "DoubleEG_Run2016D_61" "DoubleEG_Run2016D_76" "DoubleEG_Run2016D_91" "DoubleEG_Run2016D_106" "DoubleEG_Run2016D_121" "DoubleEG_Run2016D_136" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
