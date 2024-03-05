#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_9" "DYJetsToLL_M_10To50_30" "DYJetsToLL_M_10To50_51" "DYJetsToLL_M_10To50_72" "DYJetsToLL_M_10To50_93" "DYJetsToLL_M_10To50_114" "DYJetsToLL_M_10To50_135" "DYJetsToLL_M_10To50_156" "DYJetsToLL_M_10To50_177" "DYJetsToLL_M_10To50_198" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50 
   ./TopMass_analysis DYJetsToLL_M_10To50/${i}.list DYJetsToLL_M_10To50/${i}.txt 
end 
