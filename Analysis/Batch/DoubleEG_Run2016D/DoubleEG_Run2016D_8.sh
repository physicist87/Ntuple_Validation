#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_7" "DoubleEG_Run2016D_22" "DoubleEG_Run2016D_37" "DoubleEG_Run2016D_52" "DoubleEG_Run2016D_67" "DoubleEG_Run2016D_82" "DoubleEG_Run2016D_97" "DoubleEG_Run2016D_112" "DoubleEG_Run2016D_127" "DoubleEG_Run2016D_142" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
