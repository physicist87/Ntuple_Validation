#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_14" "WJetsToLNu_Mad_44" "WJetsToLNu_Mad_74" "WJetsToLNu_Mad_104" "WJetsToLNu_Mad_134" "WJetsToLNu_Mad_164" "WJetsToLNu_Mad_194" "WJetsToLNu_Mad_224" "WJetsToLNu_Mad_254" "WJetsToLNu_Mad_284" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
