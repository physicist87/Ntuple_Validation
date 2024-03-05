#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_17" "DYJetsToLL_M_50_54" "DYJetsToLL_M_50_91" "DYJetsToLL_M_50_128" "DYJetsToLL_M_50_165" "DYJetsToLL_M_50_202" "DYJetsToLL_M_50_239" "DYJetsToLL_M_50_276" "DYJetsToLL_M_50_313" "DYJetsToLL_M_50_350" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
