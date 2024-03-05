#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_14" "TTJets_Inclusive_52" "TTJets_Inclusive_90" "TTJets_Inclusive_128" "TTJets_Inclusive_166" "TTJets_Inclusive_204" "TTJets_Inclusive_242" "TTJets_Inclusive_280" "TTJets_Inclusive_318" "TTJets_Inclusive_356" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
