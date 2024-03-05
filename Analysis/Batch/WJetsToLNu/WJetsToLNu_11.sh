#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu 
cmsenv 
set inputlists = ("WJetsToLNu_10" "WJetsToLNu_22" "WJetsToLNu_34" "WJetsToLNu_46" "WJetsToLNu_58" "WJetsToLNu_70" "WJetsToLNu_82" "WJetsToLNu_94" "WJetsToLNu_106" "WJetsToLNu_118" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu 
   ./TopMass_analysis WJetsToLNu/${i}.list WJetsToLNu/${i}.txt 
end 
