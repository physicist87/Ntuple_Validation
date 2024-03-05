#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_22" "TTJets_Inclusive_60" "TTJets_Inclusive_98" "TTJets_Inclusive_136" "TTJets_Inclusive_174" "TTJets_Inclusive_212" "TTJets_Inclusive_250" "TTJets_Inclusive_288" "TTJets_Inclusive_326" "TTJets_Inclusive_364" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
