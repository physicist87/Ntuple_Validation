#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_13" "DoubleEG_Run2016D_28" "DoubleEG_Run2016D_43" "DoubleEG_Run2016D_58" "DoubleEG_Run2016D_73" "DoubleEG_Run2016D_88" "DoubleEG_Run2016D_103" "DoubleEG_Run2016D_118" "DoubleEG_Run2016D_133" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
