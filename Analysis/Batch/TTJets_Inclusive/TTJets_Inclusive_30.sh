#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_29" "TTJets_Inclusive_67" "TTJets_Inclusive_105" "TTJets_Inclusive_143" "TTJets_Inclusive_181" "TTJets_Inclusive_219" "TTJets_Inclusive_257" "TTJets_Inclusive_295" "TTJets_Inclusive_333" "TTJets_Inclusive_371" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
