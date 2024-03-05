#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_7" "SingleMuon_Run2016D_22" "SingleMuon_Run2016D_37" "SingleMuon_Run2016D_52" "SingleMuon_Run2016D_67" "SingleMuon_Run2016D_82" "SingleMuon_Run2016D_97" "SingleMuon_Run2016D_112" "SingleMuon_Run2016D_127" "SingleMuon_Run2016D_142" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
