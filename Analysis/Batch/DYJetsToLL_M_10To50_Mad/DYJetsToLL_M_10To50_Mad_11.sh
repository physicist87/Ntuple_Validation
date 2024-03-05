#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_10" "DYJetsToLL_M_10To50_Mad_21" "DYJetsToLL_M_10To50_Mad_32" "DYJetsToLL_M_10To50_Mad_43" "DYJetsToLL_M_10To50_Mad_54" "DYJetsToLL_M_10To50_Mad_65" "DYJetsToLL_M_10To50_Mad_76" "DYJetsToLL_M_10To50_Mad_87" "DYJetsToLL_M_10To50_Mad_98" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
