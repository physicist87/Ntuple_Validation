#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_11" "SingleMuon_Run2016D_26" "SingleMuon_Run2016D_41" "SingleMuon_Run2016D_56" "SingleMuon_Run2016D_71" "SingleMuon_Run2016D_86" "SingleMuon_Run2016D_101" "SingleMuon_Run2016D_116" "SingleMuon_Run2016D_131" "SingleMuon_Run2016D_146" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
