#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_33" "TTJets_Inclusive_71" "TTJets_Inclusive_109" "TTJets_Inclusive_147" "TTJets_Inclusive_185" "TTJets_Inclusive_223" "TTJets_Inclusive_261" "TTJets_Inclusive_299" "TTJets_Inclusive_337" "TTJets_Inclusive_375" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
