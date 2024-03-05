#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_10" "WJetsToLNu_Mad_40" "WJetsToLNu_Mad_70" "WJetsToLNu_Mad_100" "WJetsToLNu_Mad_130" "WJetsToLNu_Mad_160" "WJetsToLNu_Mad_190" "WJetsToLNu_Mad_220" "WJetsToLNu_Mad_250" "WJetsToLNu_Mad_280" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
