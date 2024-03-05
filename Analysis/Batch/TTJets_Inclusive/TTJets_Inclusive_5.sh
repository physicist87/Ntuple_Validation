#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_4" "TTJets_Inclusive_42" "TTJets_Inclusive_80" "TTJets_Inclusive_118" "TTJets_Inclusive_156" "TTJets_Inclusive_194" "TTJets_Inclusive_232" "TTJets_Inclusive_270" "TTJets_Inclusive_308" "TTJets_Inclusive_346" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
