#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_8" "TTJets_Inclusive_46" "TTJets_Inclusive_84" "TTJets_Inclusive_122" "TTJets_Inclusive_160" "TTJets_Inclusive_198" "TTJets_Inclusive_236" "TTJets_Inclusive_274" "TTJets_Inclusive_312" "TTJets_Inclusive_350" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
