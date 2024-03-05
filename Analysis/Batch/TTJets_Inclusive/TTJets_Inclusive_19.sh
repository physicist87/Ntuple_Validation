#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_18" "TTJets_Inclusive_56" "TTJets_Inclusive_94" "TTJets_Inclusive_132" "TTJets_Inclusive_170" "TTJets_Inclusive_208" "TTJets_Inclusive_246" "TTJets_Inclusive_284" "TTJets_Inclusive_322" "TTJets_Inclusive_360" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
