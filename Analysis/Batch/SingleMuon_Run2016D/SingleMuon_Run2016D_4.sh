#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_3" "SingleMuon_Run2016D_18" "SingleMuon_Run2016D_33" "SingleMuon_Run2016D_48" "SingleMuon_Run2016D_63" "SingleMuon_Run2016D_78" "SingleMuon_Run2016D_93" "SingleMuon_Run2016D_108" "SingleMuon_Run2016D_123" "SingleMuon_Run2016D_138" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
