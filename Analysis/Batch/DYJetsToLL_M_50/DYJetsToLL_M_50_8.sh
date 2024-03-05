#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_7" "DYJetsToLL_M_50_44" "DYJetsToLL_M_50_81" "DYJetsToLL_M_50_118" "DYJetsToLL_M_50_155" "DYJetsToLL_M_50_192" "DYJetsToLL_M_50_229" "DYJetsToLL_M_50_266" "DYJetsToLL_M_50_303" "DYJetsToLL_M_50_340" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
