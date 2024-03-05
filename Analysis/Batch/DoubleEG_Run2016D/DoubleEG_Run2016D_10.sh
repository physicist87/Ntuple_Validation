#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_9" "DoubleEG_Run2016D_24" "DoubleEG_Run2016D_39" "DoubleEG_Run2016D_54" "DoubleEG_Run2016D_69" "DoubleEG_Run2016D_84" "DoubleEG_Run2016D_99" "DoubleEG_Run2016D_114" "DoubleEG_Run2016D_129" "DoubleEG_Run2016D_144" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
