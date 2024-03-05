#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_14" "DYJetsToLL_M_10To50_35" "DYJetsToLL_M_10To50_56" "DYJetsToLL_M_10To50_77" "DYJetsToLL_M_10To50_98" "DYJetsToLL_M_10To50_119" "DYJetsToLL_M_10To50_140" "DYJetsToLL_M_10To50_161" "DYJetsToLL_M_10To50_182" "DYJetsToLL_M_10To50_203" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
