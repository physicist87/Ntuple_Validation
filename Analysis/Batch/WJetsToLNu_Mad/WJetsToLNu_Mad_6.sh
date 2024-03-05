#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_5" "WJetsToLNu_Mad_35" "WJetsToLNu_Mad_65" "WJetsToLNu_Mad_95" "WJetsToLNu_Mad_125" "WJetsToLNu_Mad_155" "WJetsToLNu_Mad_185" "WJetsToLNu_Mad_215" "WJetsToLNu_Mad_245" "WJetsToLNu_Mad_275" "WJetsToLNu_Mad_305" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
