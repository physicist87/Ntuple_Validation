#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_5" "DYJetsToLL_M_50_42" "DYJetsToLL_M_50_79" "DYJetsToLL_M_50_116" "DYJetsToLL_M_50_153" "DYJetsToLL_M_50_190" "DYJetsToLL_M_50_227" "DYJetsToLL_M_50_264" "DYJetsToLL_M_50_301" "DYJetsToLL_M_50_338" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
