#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DYJetsToLL_M_10To50_Mad 
cmsenv 
set inputlists = ("DYJetsToLL_M_10To50_Mad_4" "DYJetsToLL_M_10To50_Mad_15" "DYJetsToLL_M_10To50_Mad_26" "DYJetsToLL_M_10To50_Mad_37" "DYJetsToLL_M_10To50_Mad_48" "DYJetsToLL_M_10To50_Mad_59" "DYJetsToLL_M_10To50_Mad_70" "DYJetsToLL_M_10To50_Mad_81" "DYJetsToLL_M_10To50_Mad_92" "DYJetsToLL_M_10To50_Mad_103" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DYJetsToLL_M_10To50_Mad 
   ./TopMass_analysis DYJetsToLL_M_10To50_Mad/${i}.list DYJetsToLL_M_10To50_Mad/${i}.txt 
end 
