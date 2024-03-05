#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_2" "DoubleEG_Run2016D_17" "DoubleEG_Run2016D_32" "DoubleEG_Run2016D_47" "DoubleEG_Run2016D_62" "DoubleEG_Run2016D_77" "DoubleEG_Run2016D_92" "DoubleEG_Run2016D_107" "DoubleEG_Run2016D_122" "DoubleEG_Run2016D_137" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
