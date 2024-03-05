#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_12" "DoubleEG_Run2016D_27" "DoubleEG_Run2016D_42" "DoubleEG_Run2016D_57" "DoubleEG_Run2016D_72" "DoubleEG_Run2016D_87" "DoubleEG_Run2016D_102" "DoubleEG_Run2016D_117" "DoubleEG_Run2016D_132" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
