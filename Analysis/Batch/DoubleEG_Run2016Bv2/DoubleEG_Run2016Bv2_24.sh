#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_23" "DoubleEG_Run2016Bv2_50" "DoubleEG_Run2016Bv2_77" "DoubleEG_Run2016Bv2_104" "DoubleEG_Run2016Bv2_131" "DoubleEG_Run2016Bv2_158" "DoubleEG_Run2016Bv2_185" "DoubleEG_Run2016Bv2_212" "DoubleEG_Run2016Bv2_239" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
