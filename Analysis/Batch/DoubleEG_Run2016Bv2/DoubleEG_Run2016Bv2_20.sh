#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_19" "DoubleEG_Run2016Bv2_46" "DoubleEG_Run2016Bv2_73" "DoubleEG_Run2016Bv2_100" "DoubleEG_Run2016Bv2_127" "DoubleEG_Run2016Bv2_154" "DoubleEG_Run2016Bv2_181" "DoubleEG_Run2016Bv2_208" "DoubleEG_Run2016Bv2_235" "DoubleEG_Run2016Bv2_262" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
