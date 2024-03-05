#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_27" "WJetsToLNu_Mad_57" "WJetsToLNu_Mad_87" "WJetsToLNu_Mad_117" "WJetsToLNu_Mad_147" "WJetsToLNu_Mad_177" "WJetsToLNu_Mad_207" "WJetsToLNu_Mad_237" "WJetsToLNu_Mad_267" "WJetsToLNu_Mad_297" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
