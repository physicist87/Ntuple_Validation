#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_12" "WJetsToLNu_Mad_42" "WJetsToLNu_Mad_72" "WJetsToLNu_Mad_102" "WJetsToLNu_Mad_132" "WJetsToLNu_Mad_162" "WJetsToLNu_Mad_192" "WJetsToLNu_Mad_222" "WJetsToLNu_Mad_252" "WJetsToLNu_Mad_282" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
