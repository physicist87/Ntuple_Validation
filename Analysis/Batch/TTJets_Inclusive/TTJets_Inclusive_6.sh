#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/TTJets_Inclusive 
cmsenv 
set inputlists = ("TTJets_Inclusive_5" "TTJets_Inclusive_43" "TTJets_Inclusive_81" "TTJets_Inclusive_119" "TTJets_Inclusive_157" "TTJets_Inclusive_195" "TTJets_Inclusive_233" "TTJets_Inclusive_271" "TTJets_Inclusive_309" "TTJets_Inclusive_347" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/TTJets_Inclusive 
   ./TopMass_analysis TTJets_Inclusive/${i}.list TTJets_Inclusive/${i}.txt 
end 
