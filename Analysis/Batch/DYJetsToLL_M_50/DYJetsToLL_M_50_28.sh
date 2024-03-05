#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_27" "DYJetsToLL_M_50_64" "DYJetsToLL_M_50_101" "DYJetsToLL_M_50_138" "DYJetsToLL_M_50_175" "DYJetsToLL_M_50_212" "DYJetsToLL_M_50_249" "DYJetsToLL_M_50_286" "DYJetsToLL_M_50_323" "DYJetsToLL_M_50_360" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
