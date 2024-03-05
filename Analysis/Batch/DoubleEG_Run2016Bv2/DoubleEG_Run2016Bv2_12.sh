#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_11" "DoubleEG_Run2016Bv2_38" "DoubleEG_Run2016Bv2_65" "DoubleEG_Run2016Bv2_92" "DoubleEG_Run2016Bv2_119" "DoubleEG_Run2016Bv2_146" "DoubleEG_Run2016Bv2_173" "DoubleEG_Run2016Bv2_200" "DoubleEG_Run2016Bv2_227" "DoubleEG_Run2016Bv2_254" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
