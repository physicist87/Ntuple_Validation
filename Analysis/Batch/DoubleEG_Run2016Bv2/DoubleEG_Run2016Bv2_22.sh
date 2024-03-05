#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_21" "DoubleEG_Run2016Bv2_48" "DoubleEG_Run2016Bv2_75" "DoubleEG_Run2016Bv2_102" "DoubleEG_Run2016Bv2_129" "DoubleEG_Run2016Bv2_156" "DoubleEG_Run2016Bv2_183" "DoubleEG_Run2016Bv2_210" "DoubleEG_Run2016Bv2_237" "DoubleEG_Run2016Bv2_264" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
