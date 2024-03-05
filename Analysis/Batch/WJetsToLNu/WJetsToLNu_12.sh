#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/WJetsToLNu 
cmsenv 
set inputlists = ("WJetsToLNu_11" "WJetsToLNu_23" "WJetsToLNu_35" "WJetsToLNu_47" "WJetsToLNu_59" "WJetsToLNu_71" "WJetsToLNu_83" "WJetsToLNu_95" "WJetsToLNu_107" "WJetsToLNu_119" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/WJetsToLNu 
   ./TopMass_analysis WJetsToLNu/${i}.list WJetsToLNu/${i}.txt 
end 
