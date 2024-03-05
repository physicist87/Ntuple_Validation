#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_4" "DYJetsToLL_M_50_41" "DYJetsToLL_M_50_78" "DYJetsToLL_M_50_115" "DYJetsToLL_M_50_152" "DYJetsToLL_M_50_189" "DYJetsToLL_M_50_226" "DYJetsToLL_M_50_263" "DYJetsToLL_M_50_300" "DYJetsToLL_M_50_337" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
