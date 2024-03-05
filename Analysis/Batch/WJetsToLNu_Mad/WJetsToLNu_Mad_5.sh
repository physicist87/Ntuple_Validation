#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_4" "WJetsToLNu_Mad_34" "WJetsToLNu_Mad_64" "WJetsToLNu_Mad_94" "WJetsToLNu_Mad_124" "WJetsToLNu_Mad_154" "WJetsToLNu_Mad_184" "WJetsToLNu_Mad_214" "WJetsToLNu_Mad_244" "WJetsToLNu_Mad_274" "WJetsToLNu_Mad_304" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
