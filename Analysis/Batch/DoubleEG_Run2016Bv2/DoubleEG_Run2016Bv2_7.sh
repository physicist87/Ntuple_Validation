#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_6" "DoubleEG_Run2016Bv2_33" "DoubleEG_Run2016Bv2_60" "DoubleEG_Run2016Bv2_87" "DoubleEG_Run2016Bv2_114" "DoubleEG_Run2016Bv2_141" "DoubleEG_Run2016Bv2_168" "DoubleEG_Run2016Bv2_195" "DoubleEG_Run2016Bv2_222" "DoubleEG_Run2016Bv2_249" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
