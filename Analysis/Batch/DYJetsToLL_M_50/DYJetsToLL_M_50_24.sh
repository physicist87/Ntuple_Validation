#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_23" "DYJetsToLL_M_50_60" "DYJetsToLL_M_50_97" "DYJetsToLL_M_50_134" "DYJetsToLL_M_50_171" "DYJetsToLL_M_50_208" "DYJetsToLL_M_50_245" "DYJetsToLL_M_50_282" "DYJetsToLL_M_50_319" "DYJetsToLL_M_50_356" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
