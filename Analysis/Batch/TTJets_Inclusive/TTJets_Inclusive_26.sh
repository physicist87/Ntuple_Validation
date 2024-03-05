#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_25" "TTJets_Inclusive_63" "TTJets_Inclusive_101" "TTJets_Inclusive_139" "TTJets_Inclusive_177" "TTJets_Inclusive_215" "TTJets_Inclusive_253" "TTJets_Inclusive_291" "TTJets_Inclusive_329" "TTJets_Inclusive_367" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
