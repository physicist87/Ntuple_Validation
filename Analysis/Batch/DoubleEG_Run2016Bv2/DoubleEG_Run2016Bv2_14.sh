#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_13" "DoubleEG_Run2016Bv2_40" "DoubleEG_Run2016Bv2_67" "DoubleEG_Run2016Bv2_94" "DoubleEG_Run2016Bv2_121" "DoubleEG_Run2016Bv2_148" "DoubleEG_Run2016Bv2_175" "DoubleEG_Run2016Bv2_202" "DoubleEG_Run2016Bv2_229" "DoubleEG_Run2016Bv2_256" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
