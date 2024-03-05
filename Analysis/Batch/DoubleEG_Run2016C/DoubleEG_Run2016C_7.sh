#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_6" "DoubleEG_Run2016C_15" "DoubleEG_Run2016C_24" "DoubleEG_Run2016C_33" "DoubleEG_Run2016C_42" "DoubleEG_Run2016C_51" "DoubleEG_Run2016C_60" "DoubleEG_Run2016C_69" "DoubleEG_Run2016C_78" "DoubleEG_Run2016C_87" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
