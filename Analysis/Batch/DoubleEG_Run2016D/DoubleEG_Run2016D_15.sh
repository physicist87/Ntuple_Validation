#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleEG_Run2016D 
cmsenv 
set inputlists = ("DoubleEG_Run2016D_14" "DoubleEG_Run2016D_29" "DoubleEG_Run2016D_44" "DoubleEG_Run2016D_59" "DoubleEG_Run2016D_74" "DoubleEG_Run2016D_89" "DoubleEG_Run2016D_104" "DoubleEG_Run2016D_119" "DoubleEG_Run2016D_134" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleEG_Run2016D 
   ./TopMass_analysis DoubleEG_Run2016D/${i}.list DoubleEG_Run2016D/${i}.txt 
end 
