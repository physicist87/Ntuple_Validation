#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_1" "TTJets_Inclusive_39" "TTJets_Inclusive_77" "TTJets_Inclusive_115" "TTJets_Inclusive_153" "TTJets_Inclusive_191" "TTJets_Inclusive_229" "TTJets_Inclusive_267" "TTJets_Inclusive_305" "TTJets_Inclusive_343" "TTJets_Inclusive_381" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
