#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_7" "DYJetsToLL_M_10To50_Mad_18" "DYJetsToLL_M_10To50_Mad_29" "DYJetsToLL_M_10To50_Mad_40" "DYJetsToLL_M_10To50_Mad_51" "DYJetsToLL_M_10To50_Mad_62" "DYJetsToLL_M_10To50_Mad_73" "DYJetsToLL_M_10To50_Mad_84" "DYJetsToLL_M_10To50_Mad_95" "DYJetsToLL_M_10To50_Mad_106" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
