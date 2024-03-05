#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu 
cmsenv 
set inputlists = ("WJetsToLNu_1" "WJetsToLNu_13" "WJetsToLNu_25" "WJetsToLNu_37" "WJetsToLNu_49" "WJetsToLNu_61" "WJetsToLNu_73" "WJetsToLNu_85" "WJetsToLNu_97" "WJetsToLNu_109" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu 
   ./TopMass_analysis WJetsToLNu/${i}.list WJetsToLNu/${i}.txt 
end 
