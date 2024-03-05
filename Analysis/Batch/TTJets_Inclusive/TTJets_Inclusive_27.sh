#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_26" "TTJets_Inclusive_64" "TTJets_Inclusive_102" "TTJets_Inclusive_140" "TTJets_Inclusive_178" "TTJets_Inclusive_216" "TTJets_Inclusive_254" "TTJets_Inclusive_292" "TTJets_Inclusive_330" "TTJets_Inclusive_368" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
