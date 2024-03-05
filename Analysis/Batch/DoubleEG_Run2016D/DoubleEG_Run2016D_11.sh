#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_10" "DoubleEG_Run2016D_25" "DoubleEG_Run2016D_40" "DoubleEG_Run2016D_55" "DoubleEG_Run2016D_70" "DoubleEG_Run2016D_85" "DoubleEG_Run2016D_100" "DoubleEG_Run2016D_115" "DoubleEG_Run2016D_130" "DoubleEG_Run2016D_145" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
