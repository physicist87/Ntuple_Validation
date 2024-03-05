#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_1" "DYJetsToLL_M_10To50_Mad_12" "DYJetsToLL_M_10To50_Mad_23" "DYJetsToLL_M_10To50_Mad_34" "DYJetsToLL_M_10To50_Mad_45" "DYJetsToLL_M_10To50_Mad_56" "DYJetsToLL_M_10To50_Mad_67" "DYJetsToLL_M_10To50_Mad_78" "DYJetsToLL_M_10To50_Mad_89" "DYJetsToLL_M_10To50_Mad_100" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
