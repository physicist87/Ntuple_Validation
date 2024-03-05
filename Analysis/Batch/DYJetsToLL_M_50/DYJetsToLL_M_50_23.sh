#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_50 
cmsenv 
set inputlists = ("DYJetsToLL_M_50_22" "DYJetsToLL_M_50_59" "DYJetsToLL_M_50_96" "DYJetsToLL_M_50_133" "DYJetsToLL_M_50_170" "DYJetsToLL_M_50_207" "DYJetsToLL_M_50_244" "DYJetsToLL_M_50_281" "DYJetsToLL_M_50_318" "DYJetsToLL_M_50_355" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_50 
   ./TopMass_analysis DYJetsToLL_M_50/${i}.list DYJetsToLL_M_50/${i}.txt 
end 
