#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_26" "DoubleEG_Run2016Bv2_53" "DoubleEG_Run2016Bv2_80" "DoubleEG_Run2016Bv2_107" "DoubleEG_Run2016Bv2_134" "DoubleEG_Run2016Bv2_161" "DoubleEG_Run2016Bv2_188" "DoubleEG_Run2016Bv2_215" "DoubleEG_Run2016Bv2_242" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
