#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_25" "WJetsToLNu_Mad_55" "WJetsToLNu_Mad_85" "WJetsToLNu_Mad_115" "WJetsToLNu_Mad_145" "WJetsToLNu_Mad_175" "WJetsToLNu_Mad_205" "WJetsToLNu_Mad_235" "WJetsToLNu_Mad_265" "WJetsToLNu_Mad_295" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
