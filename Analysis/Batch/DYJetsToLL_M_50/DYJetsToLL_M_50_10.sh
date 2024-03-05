#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_9" "DYJetsToLL_M_50_46" "DYJetsToLL_M_50_83" "DYJetsToLL_M_50_120" "DYJetsToLL_M_50_157" "DYJetsToLL_M_50_194" "DYJetsToLL_M_50_231" "DYJetsToLL_M_50_268" "DYJetsToLL_M_50_305" "DYJetsToLL_M_50_342" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
