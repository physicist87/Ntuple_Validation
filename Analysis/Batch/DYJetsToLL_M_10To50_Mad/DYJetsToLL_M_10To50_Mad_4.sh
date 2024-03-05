#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_3" "DYJetsToLL_M_10To50_Mad_14" "DYJetsToLL_M_10To50_Mad_25" "DYJetsToLL_M_10To50_Mad_36" "DYJetsToLL_M_10To50_Mad_47" "DYJetsToLL_M_10To50_Mad_58" "DYJetsToLL_M_10To50_Mad_69" "DYJetsToLL_M_10To50_Mad_80" "DYJetsToLL_M_10To50_Mad_91" "DYJetsToLL_M_10To50_Mad_102" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
