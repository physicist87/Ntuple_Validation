#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_8" "DoubleEG_Run2016D_23" "DoubleEG_Run2016D_38" "DoubleEG_Run2016D_53" "DoubleEG_Run2016D_68" "DoubleEG_Run2016D_83" "DoubleEG_Run2016D_98" "DoubleEG_Run2016D_113" "DoubleEG_Run2016D_128" "DoubleEG_Run2016D_143" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
