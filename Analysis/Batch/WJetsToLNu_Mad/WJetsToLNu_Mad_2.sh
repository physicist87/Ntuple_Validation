#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_1" "WJetsToLNu_Mad_31" "WJetsToLNu_Mad_61" "WJetsToLNu_Mad_91" "WJetsToLNu_Mad_121" "WJetsToLNu_Mad_151" "WJetsToLNu_Mad_181" "WJetsToLNu_Mad_211" "WJetsToLNu_Mad_241" "WJetsToLNu_Mad_271" "WJetsToLNu_Mad_301" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
