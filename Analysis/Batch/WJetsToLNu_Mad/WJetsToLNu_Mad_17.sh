#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_16" "WJetsToLNu_Mad_46" "WJetsToLNu_Mad_76" "WJetsToLNu_Mad_106" "WJetsToLNu_Mad_136" "WJetsToLNu_Mad_166" "WJetsToLNu_Mad_196" "WJetsToLNu_Mad_226" "WJetsToLNu_Mad_256" "WJetsToLNu_Mad_286" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
