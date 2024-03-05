#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_20" "TTJets_Inclusive_58" "TTJets_Inclusive_96" "TTJets_Inclusive_134" "TTJets_Inclusive_172" "TTJets_Inclusive_210" "TTJets_Inclusive_248" "TTJets_Inclusive_286" "TTJets_Inclusive_324" "TTJets_Inclusive_362" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
