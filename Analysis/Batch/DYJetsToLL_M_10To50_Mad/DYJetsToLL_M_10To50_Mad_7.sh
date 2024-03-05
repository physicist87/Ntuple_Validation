#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_6" "DYJetsToLL_M_10To50_Mad_17" "DYJetsToLL_M_10To50_Mad_28" "DYJetsToLL_M_10To50_Mad_39" "DYJetsToLL_M_10To50_Mad_50" "DYJetsToLL_M_10To50_Mad_61" "DYJetsToLL_M_10To50_Mad_72" "DYJetsToLL_M_10To50_Mad_83" "DYJetsToLL_M_10To50_Mad_94" "DYJetsToLL_M_10To50_Mad_105" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
