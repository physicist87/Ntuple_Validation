#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_9" "WJetsToLNu_Mad_39" "WJetsToLNu_Mad_69" "WJetsToLNu_Mad_99" "WJetsToLNu_Mad_129" "WJetsToLNu_Mad_159" "WJetsToLNu_Mad_189" "WJetsToLNu_Mad_219" "WJetsToLNu_Mad_249" "WJetsToLNu_Mad_279" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
