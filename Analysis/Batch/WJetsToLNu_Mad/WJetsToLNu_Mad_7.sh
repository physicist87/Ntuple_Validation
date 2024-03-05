#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_6" "WJetsToLNu_Mad_36" "WJetsToLNu_Mad_66" "WJetsToLNu_Mad_96" "WJetsToLNu_Mad_126" "WJetsToLNu_Mad_156" "WJetsToLNu_Mad_186" "WJetsToLNu_Mad_216" "WJetsToLNu_Mad_246" "WJetsToLNu_Mad_276" "WJetsToLNu_Mad_306" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
