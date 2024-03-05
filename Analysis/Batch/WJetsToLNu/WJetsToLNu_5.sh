#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu 
cmsenv 
set inputlists = ("WJetsToLNu_4" "WJetsToLNu_16" "WJetsToLNu_28" "WJetsToLNu_40" "WJetsToLNu_52" "WJetsToLNu_64" "WJetsToLNu_76" "WJetsToLNu_88" "WJetsToLNu_100" "WJetsToLNu_112" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu 
   ./TopMass_analysis WJetsToLNu/${i}.list WJetsToLNu/${i}.txt 
end 
