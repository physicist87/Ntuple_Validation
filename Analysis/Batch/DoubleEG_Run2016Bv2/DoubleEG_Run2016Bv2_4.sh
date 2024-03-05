#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_3" "DoubleEG_Run2016Bv2_30" "DoubleEG_Run2016Bv2_57" "DoubleEG_Run2016Bv2_84" "DoubleEG_Run2016Bv2_111" "DoubleEG_Run2016Bv2_138" "DoubleEG_Run2016Bv2_165" "DoubleEG_Run2016Bv2_192" "DoubleEG_Run2016Bv2_219" "DoubleEG_Run2016Bv2_246" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
