#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_25" "DoubleEG_Run2016Bv2_52" "DoubleEG_Run2016Bv2_79" "DoubleEG_Run2016Bv2_106" "DoubleEG_Run2016Bv2_133" "DoubleEG_Run2016Bv2_160" "DoubleEG_Run2016Bv2_187" "DoubleEG_Run2016Bv2_214" "DoubleEG_Run2016Bv2_241" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
