#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_35" "TTJets_Inclusive_73" "TTJets_Inclusive_111" "TTJets_Inclusive_149" "TTJets_Inclusive_187" "TTJets_Inclusive_225" "TTJets_Inclusive_263" "TTJets_Inclusive_301" "TTJets_Inclusive_339" "TTJets_Inclusive_377" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
