#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_13" "TTJets_Inclusive_51" "TTJets_Inclusive_89" "TTJets_Inclusive_127" "TTJets_Inclusive_165" "TTJets_Inclusive_203" "TTJets_Inclusive_241" "TTJets_Inclusive_279" "TTJets_Inclusive_317" "TTJets_Inclusive_355" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
