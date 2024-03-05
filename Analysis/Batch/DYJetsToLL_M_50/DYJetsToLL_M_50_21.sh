#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_20" "DYJetsToLL_M_50_57" "DYJetsToLL_M_50_94" "DYJetsToLL_M_50_131" "DYJetsToLL_M_50_168" "DYJetsToLL_M_50_205" "DYJetsToLL_M_50_242" "DYJetsToLL_M_50_279" "DYJetsToLL_M_50_316" "DYJetsToLL_M_50_353" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
