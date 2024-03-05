#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_21" "WJetsToLNu_Mad_51" "WJetsToLNu_Mad_81" "WJetsToLNu_Mad_111" "WJetsToLNu_Mad_141" "WJetsToLNu_Mad_171" "WJetsToLNu_Mad_201" "WJetsToLNu_Mad_231" "WJetsToLNu_Mad_261" "WJetsToLNu_Mad_291" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
