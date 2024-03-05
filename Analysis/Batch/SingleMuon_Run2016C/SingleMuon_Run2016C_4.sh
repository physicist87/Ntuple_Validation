#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_3" "SingleMuon_Run2016C_12" "SingleMuon_Run2016C_21" "SingleMuon_Run2016C_30" "SingleMuon_Run2016C_39" "SingleMuon_Run2016C_48" "SingleMuon_Run2016C_57" "SingleMuon_Run2016C_66" "SingleMuon_Run2016C_75" "SingleMuon_Run2016C_84" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
