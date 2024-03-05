#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_23" "TTJets_Inclusive_61" "TTJets_Inclusive_99" "TTJets_Inclusive_137" "TTJets_Inclusive_175" "TTJets_Inclusive_213" "TTJets_Inclusive_251" "TTJets_Inclusive_289" "TTJets_Inclusive_327" "TTJets_Inclusive_365" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
