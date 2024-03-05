#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_4" "SingleMuon_Run2016D_19" "SingleMuon_Run2016D_34" "SingleMuon_Run2016D_49" "SingleMuon_Run2016D_64" "SingleMuon_Run2016D_79" "SingleMuon_Run2016D_94" "SingleMuon_Run2016D_109" "SingleMuon_Run2016D_124" "SingleMuon_Run2016D_139" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
