#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_20" "WJetsToLNu_Mad_50" "WJetsToLNu_Mad_80" "WJetsToLNu_Mad_110" "WJetsToLNu_Mad_140" "WJetsToLNu_Mad_170" "WJetsToLNu_Mad_200" "WJetsToLNu_Mad_230" "WJetsToLNu_Mad_260" "WJetsToLNu_Mad_290" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
