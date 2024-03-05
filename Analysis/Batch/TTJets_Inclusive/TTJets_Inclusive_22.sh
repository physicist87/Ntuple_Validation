#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_21" "TTJets_Inclusive_59" "TTJets_Inclusive_97" "TTJets_Inclusive_135" "TTJets_Inclusive_173" "TTJets_Inclusive_211" "TTJets_Inclusive_249" "TTJets_Inclusive_287" "TTJets_Inclusive_325" "TTJets_Inclusive_363" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
