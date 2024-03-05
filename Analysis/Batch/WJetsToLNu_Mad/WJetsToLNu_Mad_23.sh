#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_22" "WJetsToLNu_Mad_52" "WJetsToLNu_Mad_82" "WJetsToLNu_Mad_112" "WJetsToLNu_Mad_142" "WJetsToLNu_Mad_172" "WJetsToLNu_Mad_202" "WJetsToLNu_Mad_232" "WJetsToLNu_Mad_262" "WJetsToLNu_Mad_292" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
