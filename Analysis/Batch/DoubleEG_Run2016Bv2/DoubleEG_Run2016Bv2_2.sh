#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_1" "DoubleEG_Run2016Bv2_28" "DoubleEG_Run2016Bv2_55" "DoubleEG_Run2016Bv2_82" "DoubleEG_Run2016Bv2_109" "DoubleEG_Run2016Bv2_136" "DoubleEG_Run2016Bv2_163" "DoubleEG_Run2016Bv2_190" "DoubleEG_Run2016Bv2_217" "DoubleEG_Run2016Bv2_244" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
