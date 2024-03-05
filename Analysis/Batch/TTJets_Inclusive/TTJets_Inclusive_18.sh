#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_17" "TTJets_Inclusive_55" "TTJets_Inclusive_93" "TTJets_Inclusive_131" "TTJets_Inclusive_169" "TTJets_Inclusive_207" "TTJets_Inclusive_245" "TTJets_Inclusive_283" "TTJets_Inclusive_321" "TTJets_Inclusive_359" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
