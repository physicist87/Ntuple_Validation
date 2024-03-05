#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_30" "TTJets_Inclusive_68" "TTJets_Inclusive_106" "TTJets_Inclusive_144" "TTJets_Inclusive_182" "TTJets_Inclusive_220" "TTJets_Inclusive_258" "TTJets_Inclusive_296" "TTJets_Inclusive_334" "TTJets_Inclusive_372" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
