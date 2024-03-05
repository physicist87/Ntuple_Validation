#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_24" "TTJets_Inclusive_62" "TTJets_Inclusive_100" "TTJets_Inclusive_138" "TTJets_Inclusive_176" "TTJets_Inclusive_214" "TTJets_Inclusive_252" "TTJets_Inclusive_290" "TTJets_Inclusive_328" "TTJets_Inclusive_366" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
