#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_34" "TTJets_Inclusive_72" "TTJets_Inclusive_110" "TTJets_Inclusive_148" "TTJets_Inclusive_186" "TTJets_Inclusive_224" "TTJets_Inclusive_262" "TTJets_Inclusive_300" "TTJets_Inclusive_338" "TTJets_Inclusive_376" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
