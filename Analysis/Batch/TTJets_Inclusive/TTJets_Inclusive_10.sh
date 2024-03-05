#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_9" "TTJets_Inclusive_47" "TTJets_Inclusive_85" "TTJets_Inclusive_123" "TTJets_Inclusive_161" "TTJets_Inclusive_199" "TTJets_Inclusive_237" "TTJets_Inclusive_275" "TTJets_Inclusive_313" "TTJets_Inclusive_351" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
