#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_4" "DoubleEG_Run2016C_13" "DoubleEG_Run2016C_22" "DoubleEG_Run2016C_31" "DoubleEG_Run2016C_40" "DoubleEG_Run2016C_49" "DoubleEG_Run2016C_58" "DoubleEG_Run2016C_67" "DoubleEG_Run2016C_76" "DoubleEG_Run2016C_85" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
