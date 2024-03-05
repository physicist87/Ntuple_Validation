#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_36" "TTJets_Inclusive_74" "TTJets_Inclusive_112" "TTJets_Inclusive_150" "TTJets_Inclusive_188" "TTJets_Inclusive_226" "TTJets_Inclusive_264" "TTJets_Inclusive_302" "TTJets_Inclusive_340" "TTJets_Inclusive_378" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
