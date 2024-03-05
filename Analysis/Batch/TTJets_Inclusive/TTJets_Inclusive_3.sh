#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_2" "TTJets_Inclusive_40" "TTJets_Inclusive_78" "TTJets_Inclusive_116" "TTJets_Inclusive_154" "TTJets_Inclusive_192" "TTJets_Inclusive_230" "TTJets_Inclusive_268" "TTJets_Inclusive_306" "TTJets_Inclusive_344" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
