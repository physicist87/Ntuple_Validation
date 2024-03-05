#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_38" "TTJets_Inclusive_76" "TTJets_Inclusive_114" "TTJets_Inclusive_152" "TTJets_Inclusive_190" "TTJets_Inclusive_228" "TTJets_Inclusive_266" "TTJets_Inclusive_304" "TTJets_Inclusive_342" "TTJets_Inclusive_380" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
