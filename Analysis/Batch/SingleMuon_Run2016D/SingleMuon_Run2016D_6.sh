#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_5" "SingleMuon_Run2016D_20" "SingleMuon_Run2016D_35" "SingleMuon_Run2016D_50" "SingleMuon_Run2016D_65" "SingleMuon_Run2016D_80" "SingleMuon_Run2016D_95" "SingleMuon_Run2016D_110" "SingleMuon_Run2016D_125" "SingleMuon_Run2016D_140" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
