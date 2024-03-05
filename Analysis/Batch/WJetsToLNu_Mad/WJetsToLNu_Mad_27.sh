#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_26" "WJetsToLNu_Mad_56" "WJetsToLNu_Mad_86" "WJetsToLNu_Mad_116" "WJetsToLNu_Mad_146" "WJetsToLNu_Mad_176" "WJetsToLNu_Mad_206" "WJetsToLNu_Mad_236" "WJetsToLNu_Mad_266" "WJetsToLNu_Mad_296" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
