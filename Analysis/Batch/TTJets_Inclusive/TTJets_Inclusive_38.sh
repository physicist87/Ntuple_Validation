#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_37" "TTJets_Inclusive_75" "TTJets_Inclusive_113" "TTJets_Inclusive_151" "TTJets_Inclusive_189" "TTJets_Inclusive_227" "TTJets_Inclusive_265" "TTJets_Inclusive_303" "TTJets_Inclusive_341" "TTJets_Inclusive_379" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
