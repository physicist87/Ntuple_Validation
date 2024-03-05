#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_7" "DYJetsToLL_M_10To50_28" "DYJetsToLL_M_10To50_49" "DYJetsToLL_M_10To50_70" "DYJetsToLL_M_10To50_91" "DYJetsToLL_M_10To50_112" "DYJetsToLL_M_10To50_133" "DYJetsToLL_M_10To50_154" "DYJetsToLL_M_10To50_175" "DYJetsToLL_M_10To50_196" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
