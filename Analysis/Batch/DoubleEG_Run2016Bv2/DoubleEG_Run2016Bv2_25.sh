#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_24" "DoubleEG_Run2016Bv2_51" "DoubleEG_Run2016Bv2_78" "DoubleEG_Run2016Bv2_105" "DoubleEG_Run2016Bv2_132" "DoubleEG_Run2016Bv2_159" "DoubleEG_Run2016Bv2_186" "DoubleEG_Run2016Bv2_213" "DoubleEG_Run2016Bv2_240" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
