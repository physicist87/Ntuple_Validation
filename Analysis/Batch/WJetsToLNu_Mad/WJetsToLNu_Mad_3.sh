#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_2" "WJetsToLNu_Mad_32" "WJetsToLNu_Mad_62" "WJetsToLNu_Mad_92" "WJetsToLNu_Mad_122" "WJetsToLNu_Mad_152" "WJetsToLNu_Mad_182" "WJetsToLNu_Mad_212" "WJetsToLNu_Mad_242" "WJetsToLNu_Mad_272" "WJetsToLNu_Mad_302" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
