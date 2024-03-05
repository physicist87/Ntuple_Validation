#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016C 
cmsenv 
set inputlists = ("DoubleEG_Run2016C_2" "DoubleEG_Run2016C_11" "DoubleEG_Run2016C_20" "DoubleEG_Run2016C_29" "DoubleEG_Run2016C_38" "DoubleEG_Run2016C_47" "DoubleEG_Run2016C_56" "DoubleEG_Run2016C_65" "DoubleEG_Run2016C_74" "DoubleEG_Run2016C_83" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016C 
   ./TopMass_analysis DoubleEG_Run2016C/${i}.list DoubleEG_Run2016C/${i}.txt 
end 
