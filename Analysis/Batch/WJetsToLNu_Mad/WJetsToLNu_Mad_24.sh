#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_23" "WJetsToLNu_Mad_53" "WJetsToLNu_Mad_83" "WJetsToLNu_Mad_113" "WJetsToLNu_Mad_143" "WJetsToLNu_Mad_173" "WJetsToLNu_Mad_203" "WJetsToLNu_Mad_233" "WJetsToLNu_Mad_263" "WJetsToLNu_Mad_293" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
