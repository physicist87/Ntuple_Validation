#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_5" "DYJetsToLL_M_10To50_Mad_16" "DYJetsToLL_M_10To50_Mad_27" "DYJetsToLL_M_10To50_Mad_38" "DYJetsToLL_M_10To50_Mad_49" "DYJetsToLL_M_10To50_Mad_60" "DYJetsToLL_M_10To50_Mad_71" "DYJetsToLL_M_10To50_Mad_82" "DYJetsToLL_M_10To50_Mad_93" "DYJetsToLL_M_10To50_Mad_104" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
