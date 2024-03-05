#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_9" "DYJetsToLL_M_10To50_Mad_20" "DYJetsToLL_M_10To50_Mad_31" "DYJetsToLL_M_10To50_Mad_42" "DYJetsToLL_M_10To50_Mad_53" "DYJetsToLL_M_10To50_Mad_64" "DYJetsToLL_M_10To50_Mad_75" "DYJetsToLL_M_10To50_Mad_86" "DYJetsToLL_M_10To50_Mad_97" "DYJetsToLL_M_10To50_Mad_108" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
