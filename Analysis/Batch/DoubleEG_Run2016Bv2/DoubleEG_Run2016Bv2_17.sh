#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_16" "DoubleEG_Run2016Bv2_43" "DoubleEG_Run2016Bv2_70" "DoubleEG_Run2016Bv2_97" "DoubleEG_Run2016Bv2_124" "DoubleEG_Run2016Bv2_151" "DoubleEG_Run2016Bv2_178" "DoubleEG_Run2016Bv2_205" "DoubleEG_Run2016Bv2_232" "DoubleEG_Run2016Bv2_259" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
