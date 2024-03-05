#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_8" "SingleMuon_Run2016C_17" "SingleMuon_Run2016C_26" "SingleMuon_Run2016C_35" "SingleMuon_Run2016C_44" "SingleMuon_Run2016C_53" "SingleMuon_Run2016C_62" "SingleMuon_Run2016C_71" "SingleMuon_Run2016C_80" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
