#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_28" "WJetsToLNu_Mad_58" "WJetsToLNu_Mad_88" "WJetsToLNu_Mad_118" "WJetsToLNu_Mad_148" "WJetsToLNu_Mad_178" "WJetsToLNu_Mad_208" "WJetsToLNu_Mad_238" "WJetsToLNu_Mad_268" "WJetsToLNu_Mad_298" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
