#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_2" "DoubleEG_Run2016Bv2_29" "DoubleEG_Run2016Bv2_56" "DoubleEG_Run2016Bv2_83" "DoubleEG_Run2016Bv2_110" "DoubleEG_Run2016Bv2_137" "DoubleEG_Run2016Bv2_164" "DoubleEG_Run2016Bv2_191" "DoubleEG_Run2016Bv2_218" "DoubleEG_Run2016Bv2_245" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
