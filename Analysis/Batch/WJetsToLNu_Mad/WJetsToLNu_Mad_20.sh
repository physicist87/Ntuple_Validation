#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_19" "WJetsToLNu_Mad_49" "WJetsToLNu_Mad_79" "WJetsToLNu_Mad_109" "WJetsToLNu_Mad_139" "WJetsToLNu_Mad_169" "WJetsToLNu_Mad_199" "WJetsToLNu_Mad_229" "WJetsToLNu_Mad_259" "WJetsToLNu_Mad_289" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
