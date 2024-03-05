#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_19" "DYJetsToLL_M_50_56" "DYJetsToLL_M_50_93" "DYJetsToLL_M_50_130" "DYJetsToLL_M_50_167" "DYJetsToLL_M_50_204" "DYJetsToLL_M_50_241" "DYJetsToLL_M_50_278" "DYJetsToLL_M_50_315" "DYJetsToLL_M_50_352" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
