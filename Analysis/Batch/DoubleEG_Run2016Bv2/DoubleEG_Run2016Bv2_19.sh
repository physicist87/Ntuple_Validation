#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_18" "DoubleEG_Run2016Bv2_45" "DoubleEG_Run2016Bv2_72" "DoubleEG_Run2016Bv2_99" "DoubleEG_Run2016Bv2_126" "DoubleEG_Run2016Bv2_153" "DoubleEG_Run2016Bv2_180" "DoubleEG_Run2016Bv2_207" "DoubleEG_Run2016Bv2_234" "DoubleEG_Run2016Bv2_261" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
