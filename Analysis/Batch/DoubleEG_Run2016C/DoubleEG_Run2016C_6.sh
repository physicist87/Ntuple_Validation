#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_5" "DoubleEG_Run2016C_14" "DoubleEG_Run2016C_23" "DoubleEG_Run2016C_32" "DoubleEG_Run2016C_41" "DoubleEG_Run2016C_50" "DoubleEG_Run2016C_59" "DoubleEG_Run2016C_68" "DoubleEG_Run2016C_77" "DoubleEG_Run2016C_86" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
