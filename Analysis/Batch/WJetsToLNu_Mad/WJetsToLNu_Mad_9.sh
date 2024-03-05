#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_8" "WJetsToLNu_Mad_38" "WJetsToLNu_Mad_68" "WJetsToLNu_Mad_98" "WJetsToLNu_Mad_128" "WJetsToLNu_Mad_158" "WJetsToLNu_Mad_188" "WJetsToLNu_Mad_218" "WJetsToLNu_Mad_248" "WJetsToLNu_Mad_278" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
