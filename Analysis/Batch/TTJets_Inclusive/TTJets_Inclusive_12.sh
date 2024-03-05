#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_11" "TTJets_Inclusive_49" "TTJets_Inclusive_87" "TTJets_Inclusive_125" "TTJets_Inclusive_163" "TTJets_Inclusive_201" "TTJets_Inclusive_239" "TTJets_Inclusive_277" "TTJets_Inclusive_315" "TTJets_Inclusive_353" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
