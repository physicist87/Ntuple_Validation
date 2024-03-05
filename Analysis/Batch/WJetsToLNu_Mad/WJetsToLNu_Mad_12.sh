#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_11" "WJetsToLNu_Mad_41" "WJetsToLNu_Mad_71" "WJetsToLNu_Mad_101" "WJetsToLNu_Mad_131" "WJetsToLNu_Mad_161" "WJetsToLNu_Mad_191" "WJetsToLNu_Mad_221" "WJetsToLNu_Mad_251" "WJetsToLNu_Mad_281" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
