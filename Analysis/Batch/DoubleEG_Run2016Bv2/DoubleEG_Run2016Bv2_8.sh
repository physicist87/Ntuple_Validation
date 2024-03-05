#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_7" "DoubleEG_Run2016Bv2_34" "DoubleEG_Run2016Bv2_61" "DoubleEG_Run2016Bv2_88" "DoubleEG_Run2016Bv2_115" "DoubleEG_Run2016Bv2_142" "DoubleEG_Run2016Bv2_169" "DoubleEG_Run2016Bv2_196" "DoubleEG_Run2016Bv2_223" "DoubleEG_Run2016Bv2_250" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
