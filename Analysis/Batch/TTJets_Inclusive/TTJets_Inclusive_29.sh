#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_28" "TTJets_Inclusive_66" "TTJets_Inclusive_104" "TTJets_Inclusive_142" "TTJets_Inclusive_180" "TTJets_Inclusive_218" "TTJets_Inclusive_256" "TTJets_Inclusive_294" "TTJets_Inclusive_332" "TTJets_Inclusive_370" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
