#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_27" "DoubleEG_Run2016Bv2_54" "DoubleEG_Run2016Bv2_81" "DoubleEG_Run2016Bv2_108" "DoubleEG_Run2016Bv2_135" "DoubleEG_Run2016Bv2_162" "DoubleEG_Run2016Bv2_189" "DoubleEG_Run2016Bv2_216" "DoubleEG_Run2016Bv2_243" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
