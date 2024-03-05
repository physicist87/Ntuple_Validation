#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_9" "DoubleEG_Run2016Bv2_36" "DoubleEG_Run2016Bv2_63" "DoubleEG_Run2016Bv2_90" "DoubleEG_Run2016Bv2_117" "DoubleEG_Run2016Bv2_144" "DoubleEG_Run2016Bv2_171" "DoubleEG_Run2016Bv2_198" "DoubleEG_Run2016Bv2_225" "DoubleEG_Run2016Bv2_252" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
