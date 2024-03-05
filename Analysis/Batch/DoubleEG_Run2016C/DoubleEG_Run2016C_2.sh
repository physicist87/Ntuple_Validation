#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_1" "DoubleEG_Run2016C_10" "DoubleEG_Run2016C_19" "DoubleEG_Run2016C_28" "DoubleEG_Run2016C_37" "DoubleEG_Run2016C_46" "DoubleEG_Run2016C_55" "DoubleEG_Run2016C_64" "DoubleEG_Run2016C_73" "DoubleEG_Run2016C_82" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
