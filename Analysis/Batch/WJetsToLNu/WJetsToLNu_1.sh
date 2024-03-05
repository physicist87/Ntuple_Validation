#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu 
cmsenv 
set inputlists = ("WJetsToLNu_12" "WJetsToLNu_24" "WJetsToLNu_36" "WJetsToLNu_48" "WJetsToLNu_60" "WJetsToLNu_72" "WJetsToLNu_84" "WJetsToLNu_96" "WJetsToLNu_108" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu 
   ./TopMass_analysis WJetsToLNu/${i}.list WJetsToLNu/${i}.txt 
end 
