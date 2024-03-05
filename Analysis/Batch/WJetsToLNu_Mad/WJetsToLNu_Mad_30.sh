#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_29" "WJetsToLNu_Mad_59" "WJetsToLNu_Mad_89" "WJetsToLNu_Mad_119" "WJetsToLNu_Mad_149" "WJetsToLNu_Mad_179" "WJetsToLNu_Mad_209" "WJetsToLNu_Mad_239" "WJetsToLNu_Mad_269" "WJetsToLNu_Mad_299" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
