#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_1" "SingleMuon_Run2016D_16" "SingleMuon_Run2016D_31" "SingleMuon_Run2016D_46" "SingleMuon_Run2016D_61" "SingleMuon_Run2016D_76" "SingleMuon_Run2016D_91" "SingleMuon_Run2016D_106" "SingleMuon_Run2016D_121" "SingleMuon_Run2016D_136" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
