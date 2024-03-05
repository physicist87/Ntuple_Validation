#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_3" "TTJets_Inclusive_41" "TTJets_Inclusive_79" "TTJets_Inclusive_117" "TTJets_Inclusive_155" "TTJets_Inclusive_193" "TTJets_Inclusive_231" "TTJets_Inclusive_269" "TTJets_Inclusive_307" "TTJets_Inclusive_345" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
