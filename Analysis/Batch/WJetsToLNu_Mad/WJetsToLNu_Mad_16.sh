#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_15" "WJetsToLNu_Mad_45" "WJetsToLNu_Mad_75" "WJetsToLNu_Mad_105" "WJetsToLNu_Mad_135" "WJetsToLNu_Mad_165" "WJetsToLNu_Mad_195" "WJetsToLNu_Mad_225" "WJetsToLNu_Mad_255" "WJetsToLNu_Mad_285" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
