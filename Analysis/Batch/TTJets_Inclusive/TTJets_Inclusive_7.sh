#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_6" "TTJets_Inclusive_44" "TTJets_Inclusive_82" "TTJets_Inclusive_120" "TTJets_Inclusive_158" "TTJets_Inclusive_196" "TTJets_Inclusive_234" "TTJets_Inclusive_272" "TTJets_Inclusive_310" "TTJets_Inclusive_348" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
