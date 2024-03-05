#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_6" "DoubleEG_Run2016D_21" "DoubleEG_Run2016D_36" "DoubleEG_Run2016D_51" "DoubleEG_Run2016D_66" "DoubleEG_Run2016D_81" "DoubleEG_Run2016D_96" "DoubleEG_Run2016D_111" "DoubleEG_Run2016D_126" "DoubleEG_Run2016D_141" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
