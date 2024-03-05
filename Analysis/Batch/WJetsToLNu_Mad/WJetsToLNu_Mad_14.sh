#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_13" "WJetsToLNu_Mad_43" "WJetsToLNu_Mad_73" "WJetsToLNu_Mad_103" "WJetsToLNu_Mad_133" "WJetsToLNu_Mad_163" "WJetsToLNu_Mad_193" "WJetsToLNu_Mad_223" "WJetsToLNu_Mad_253" "WJetsToLNu_Mad_283" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
