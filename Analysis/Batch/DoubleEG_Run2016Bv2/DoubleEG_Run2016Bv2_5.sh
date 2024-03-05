#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_4" "DoubleEG_Run2016Bv2_31" "DoubleEG_Run2016Bv2_58" "DoubleEG_Run2016Bv2_85" "DoubleEG_Run2016Bv2_112" "DoubleEG_Run2016Bv2_139" "DoubleEG_Run2016Bv2_166" "DoubleEG_Run2016Bv2_193" "DoubleEG_Run2016Bv2_220" "DoubleEG_Run2016Bv2_247" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
