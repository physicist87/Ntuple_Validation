#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_14" "DoubleEG_Run2016Bv2_41" "DoubleEG_Run2016Bv2_68" "DoubleEG_Run2016Bv2_95" "DoubleEG_Run2016Bv2_122" "DoubleEG_Run2016Bv2_149" "DoubleEG_Run2016Bv2_176" "DoubleEG_Run2016Bv2_203" "DoubleEG_Run2016Bv2_230" "DoubleEG_Run2016Bv2_257" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
