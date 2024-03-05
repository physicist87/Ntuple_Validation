#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_3" "WJetsToLNu_Mad_33" "WJetsToLNu_Mad_63" "WJetsToLNu_Mad_93" "WJetsToLNu_Mad_123" "WJetsToLNu_Mad_153" "WJetsToLNu_Mad_183" "WJetsToLNu_Mad_213" "WJetsToLNu_Mad_243" "WJetsToLNu_Mad_273" "WJetsToLNu_Mad_303" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
