#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_5" "DoubleEG_Run2016Bv2_32" "DoubleEG_Run2016Bv2_59" "DoubleEG_Run2016Bv2_86" "DoubleEG_Run2016Bv2_113" "DoubleEG_Run2016Bv2_140" "DoubleEG_Run2016Bv2_167" "DoubleEG_Run2016Bv2_194" "DoubleEG_Run2016Bv2_221" "DoubleEG_Run2016Bv2_248" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
