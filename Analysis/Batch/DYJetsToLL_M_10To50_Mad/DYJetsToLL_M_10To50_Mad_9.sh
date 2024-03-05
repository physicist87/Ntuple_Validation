#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_8" "DYJetsToLL_M_10To50_Mad_19" "DYJetsToLL_M_10To50_Mad_30" "DYJetsToLL_M_10To50_Mad_41" "DYJetsToLL_M_10To50_Mad_52" "DYJetsToLL_M_10To50_Mad_63" "DYJetsToLL_M_10To50_Mad_74" "DYJetsToLL_M_10To50_Mad_85" "DYJetsToLL_M_10To50_Mad_96" "DYJetsToLL_M_10To50_Mad_107" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
