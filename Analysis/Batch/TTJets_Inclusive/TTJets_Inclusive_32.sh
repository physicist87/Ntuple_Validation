#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_31" "TTJets_Inclusive_69" "TTJets_Inclusive_107" "TTJets_Inclusive_145" "TTJets_Inclusive_183" "TTJets_Inclusive_221" "TTJets_Inclusive_259" "TTJets_Inclusive_297" "TTJets_Inclusive_335" "TTJets_Inclusive_373" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
