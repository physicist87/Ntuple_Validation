#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_7" "TTJets_Inclusive_45" "TTJets_Inclusive_83" "TTJets_Inclusive_121" "TTJets_Inclusive_159" "TTJets_Inclusive_197" "TTJets_Inclusive_235" "TTJets_Inclusive_273" "TTJets_Inclusive_311" "TTJets_Inclusive_349" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
