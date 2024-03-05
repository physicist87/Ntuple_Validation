#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_17" "WJetsToLNu_Mad_47" "WJetsToLNu_Mad_77" "WJetsToLNu_Mad_107" "WJetsToLNu_Mad_137" "WJetsToLNu_Mad_167" "WJetsToLNu_Mad_197" "WJetsToLNu_Mad_227" "WJetsToLNu_Mad_257" "WJetsToLNu_Mad_287" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
