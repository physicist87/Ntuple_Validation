#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_7" "WJetsToLNu_Mad_37" "WJetsToLNu_Mad_67" "WJetsToLNu_Mad_97" "WJetsToLNu_Mad_127" "WJetsToLNu_Mad_157" "WJetsToLNu_Mad_187" "WJetsToLNu_Mad_217" "WJetsToLNu_Mad_247" "WJetsToLNu_Mad_277" "WJetsToLNu_Mad_307" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
