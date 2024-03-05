#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_31" "DYJetsToLL_M_50_68" "DYJetsToLL_M_50_105" "DYJetsToLL_M_50_142" "DYJetsToLL_M_50_179" "DYJetsToLL_M_50_216" "DYJetsToLL_M_50_253" "DYJetsToLL_M_50_290" "DYJetsToLL_M_50_327" "DYJetsToLL_M_50_364" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
