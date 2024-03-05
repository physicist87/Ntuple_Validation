#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_25" "DYJetsToLL_M_50_62" "DYJetsToLL_M_50_99" "DYJetsToLL_M_50_136" "DYJetsToLL_M_50_173" "DYJetsToLL_M_50_210" "DYJetsToLL_M_50_247" "DYJetsToLL_M_50_284" "DYJetsToLL_M_50_321" "DYJetsToLL_M_50_358" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
