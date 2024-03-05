#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_15" "DoubleEG_Run2016Bv2_42" "DoubleEG_Run2016Bv2_69" "DoubleEG_Run2016Bv2_96" "DoubleEG_Run2016Bv2_123" "DoubleEG_Run2016Bv2_150" "DoubleEG_Run2016Bv2_177" "DoubleEG_Run2016Bv2_204" "DoubleEG_Run2016Bv2_231" "DoubleEG_Run2016Bv2_258" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
