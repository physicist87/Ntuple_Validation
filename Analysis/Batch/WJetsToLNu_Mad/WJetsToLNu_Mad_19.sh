#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_18" "WJetsToLNu_Mad_48" "WJetsToLNu_Mad_78" "WJetsToLNu_Mad_108" "WJetsToLNu_Mad_138" "WJetsToLNu_Mad_168" "WJetsToLNu_Mad_198" "WJetsToLNu_Mad_228" "WJetsToLNu_Mad_258" "WJetsToLNu_Mad_288" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
