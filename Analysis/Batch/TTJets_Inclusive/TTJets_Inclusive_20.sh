#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_19" "TTJets_Inclusive_57" "TTJets_Inclusive_95" "TTJets_Inclusive_133" "TTJets_Inclusive_171" "TTJets_Inclusive_209" "TTJets_Inclusive_247" "TTJets_Inclusive_285" "TTJets_Inclusive_323" "TTJets_Inclusive_361" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
