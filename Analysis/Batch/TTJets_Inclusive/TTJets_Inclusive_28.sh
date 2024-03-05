#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_27" "TTJets_Inclusive_65" "TTJets_Inclusive_103" "TTJets_Inclusive_141" "TTJets_Inclusive_179" "TTJets_Inclusive_217" "TTJets_Inclusive_255" "TTJets_Inclusive_293" "TTJets_Inclusive_331" "TTJets_Inclusive_369" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
