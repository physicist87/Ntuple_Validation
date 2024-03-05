#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_12" "TTJets_Inclusive_50" "TTJets_Inclusive_88" "TTJets_Inclusive_126" "TTJets_Inclusive_164" "TTJets_Inclusive_202" "TTJets_Inclusive_240" "TTJets_Inclusive_278" "TTJets_Inclusive_316" "TTJets_Inclusive_354" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
