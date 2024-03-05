#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_19" "DYJetsToLL_M_10To50_40" "DYJetsToLL_M_10To50_61" "DYJetsToLL_M_10To50_82" "DYJetsToLL_M_10To50_103" "DYJetsToLL_M_10To50_124" "DYJetsToLL_M_10To50_145" "DYJetsToLL_M_10To50_166" "DYJetsToLL_M_10To50_187" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
