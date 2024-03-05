#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_12" "DoubleEG_Run2016Bv2_39" "DoubleEG_Run2016Bv2_66" "DoubleEG_Run2016Bv2_93" "DoubleEG_Run2016Bv2_120" "DoubleEG_Run2016Bv2_147" "DoubleEG_Run2016Bv2_174" "DoubleEG_Run2016Bv2_201" "DoubleEG_Run2016Bv2_228" "DoubleEG_Run2016Bv2_255" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
