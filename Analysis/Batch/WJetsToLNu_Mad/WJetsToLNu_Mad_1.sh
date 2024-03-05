#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_30" "WJetsToLNu_Mad_60" "WJetsToLNu_Mad_90" "WJetsToLNu_Mad_120" "WJetsToLNu_Mad_150" "WJetsToLNu_Mad_180" "WJetsToLNu_Mad_210" "WJetsToLNu_Mad_240" "WJetsToLNu_Mad_270" "WJetsToLNu_Mad_300" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
