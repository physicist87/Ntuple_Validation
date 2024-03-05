#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_10" "TTJets_Inclusive_48" "TTJets_Inclusive_86" "TTJets_Inclusive_124" "TTJets_Inclusive_162" "TTJets_Inclusive_200" "TTJets_Inclusive_238" "TTJets_Inclusive_276" "TTJets_Inclusive_314" "TTJets_Inclusive_352" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
