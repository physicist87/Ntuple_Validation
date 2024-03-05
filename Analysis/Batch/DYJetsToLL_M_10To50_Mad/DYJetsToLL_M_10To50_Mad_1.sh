#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_11" "DYJetsToLL_M_10To50_Mad_22" "DYJetsToLL_M_10To50_Mad_33" "DYJetsToLL_M_10To50_Mad_44" "DYJetsToLL_M_10To50_Mad_55" "DYJetsToLL_M_10To50_Mad_66" "DYJetsToLL_M_10To50_Mad_77" "DYJetsToLL_M_10To50_Mad_88" "DYJetsToLL_M_10To50_Mad_99" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
