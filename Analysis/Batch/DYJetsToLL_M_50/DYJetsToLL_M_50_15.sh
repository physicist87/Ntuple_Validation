#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_14" "DYJetsToLL_M_50_51" "DYJetsToLL_M_50_88" "DYJetsToLL_M_50_125" "DYJetsToLL_M_50_162" "DYJetsToLL_M_50_199" "DYJetsToLL_M_50_236" "DYJetsToLL_M_50_273" "DYJetsToLL_M_50_310" "DYJetsToLL_M_50_347" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
