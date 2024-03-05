#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_20" "DoubleEG_Run2016Bv2_47" "DoubleEG_Run2016Bv2_74" "DoubleEG_Run2016Bv2_101" "DoubleEG_Run2016Bv2_128" "DoubleEG_Run2016Bv2_155" "DoubleEG_Run2016Bv2_182" "DoubleEG_Run2016Bv2_209" "DoubleEG_Run2016Bv2_236" "DoubleEG_Run2016Bv2_263" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
