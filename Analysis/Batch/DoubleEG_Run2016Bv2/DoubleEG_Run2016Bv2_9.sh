#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_8" "DoubleEG_Run2016Bv2_35" "DoubleEG_Run2016Bv2_62" "DoubleEG_Run2016Bv2_89" "DoubleEG_Run2016Bv2_116" "DoubleEG_Run2016Bv2_143" "DoubleEG_Run2016Bv2_170" "DoubleEG_Run2016Bv2_197" "DoubleEG_Run2016Bv2_224" "DoubleEG_Run2016Bv2_251" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
