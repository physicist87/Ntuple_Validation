#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_10" "DoubleEG_Run2016Bv2_37" "DoubleEG_Run2016Bv2_64" "DoubleEG_Run2016Bv2_91" "DoubleEG_Run2016Bv2_118" "DoubleEG_Run2016Bv2_145" "DoubleEG_Run2016Bv2_172" "DoubleEG_Run2016Bv2_199" "DoubleEG_Run2016Bv2_226" "DoubleEG_Run2016Bv2_253" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
