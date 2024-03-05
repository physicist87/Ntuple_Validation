#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_2" "DYJetsToLL_M_10To50_Mad_13" "DYJetsToLL_M_10To50_Mad_24" "DYJetsToLL_M_10To50_Mad_35" "DYJetsToLL_M_10To50_Mad_46" "DYJetsToLL_M_10To50_Mad_57" "DYJetsToLL_M_10To50_Mad_68" "DYJetsToLL_M_10To50_Mad_79" "DYJetsToLL_M_10To50_Mad_90" "DYJetsToLL_M_10To50_Mad_101" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
