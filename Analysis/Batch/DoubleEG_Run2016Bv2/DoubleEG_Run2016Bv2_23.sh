#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleEG_Run2016Bv2_22" "DoubleEG_Run2016Bv2_49" "DoubleEG_Run2016Bv2_76" "DoubleEG_Run2016Bv2_103" "DoubleEG_Run2016Bv2_130" "DoubleEG_Run2016Bv2_157" "DoubleEG_Run2016Bv2_184" "DoubleEG_Run2016Bv2_211" "DoubleEG_Run2016Bv2_238" "DoubleEG_Run2016Bv2_265" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016Bv2 
   ./TopMass_analysis DoubleEG_Run2016Bv2/${i}.list DoubleEG_Run2016Bv2/${i}.txt 
end 
