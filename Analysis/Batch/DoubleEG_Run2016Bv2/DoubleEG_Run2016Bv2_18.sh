#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_17" "DoubleEG_Run2016Bv2_44" "DoubleEG_Run2016Bv2_71" "DoubleEG_Run2016Bv2_98" "DoubleEG_Run2016Bv2_125" "DoubleEG_Run2016Bv2_152" "DoubleEG_Run2016Bv2_179" "DoubleEG_Run2016Bv2_206" "DoubleEG_Run2016Bv2_233" "DoubleEG_Run2016Bv2_260" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
