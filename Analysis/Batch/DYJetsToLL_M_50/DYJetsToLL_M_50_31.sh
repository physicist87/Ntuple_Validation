#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_30" "DYJetsToLL_M_50_67" "DYJetsToLL_M_50_104" "DYJetsToLL_M_50_141" "DYJetsToLL_M_50_178" "DYJetsToLL_M_50_215" "DYJetsToLL_M_50_252" "DYJetsToLL_M_50_289" "DYJetsToLL_M_50_326" "DYJetsToLL_M_50_363" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
