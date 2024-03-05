#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu_Mad 
cmsenv 
set inputlists = ("WJetsToLNu_Mad_24" "WJetsToLNu_Mad_54" "WJetsToLNu_Mad_84" "WJetsToLNu_Mad_114" "WJetsToLNu_Mad_144" "WJetsToLNu_Mad_174" "WJetsToLNu_Mad_204" "WJetsToLNu_Mad_234" "WJetsToLNu_Mad_264" "WJetsToLNu_Mad_294" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu_Mad 
   ./TopMass_analysis WJetsToLNu_Mad/${i}.list WJetsToLNu_Mad/${i}.txt 
end 
