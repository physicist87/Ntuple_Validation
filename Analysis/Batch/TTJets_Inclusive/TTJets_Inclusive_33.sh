#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_32" "TTJets_Inclusive_70" "TTJets_Inclusive_108" "TTJets_Inclusive_146" "TTJets_Inclusive_184" "TTJets_Inclusive_222" "TTJets_Inclusive_260" "TTJets_Inclusive_298" "TTJets_Inclusive_336" "TTJets_Inclusive_374" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
