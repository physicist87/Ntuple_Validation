#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_15" "TTJets_Inclusive_53" "TTJets_Inclusive_91" "TTJets_Inclusive_129" "TTJets_Inclusive_167" "TTJets_Inclusive_205" "TTJets_Inclusive_243" "TTJets_Inclusive_281" "TTJets_Inclusive_319" "TTJets_Inclusive_357" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
