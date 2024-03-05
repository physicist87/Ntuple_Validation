#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_10" "SingleMuon_Run2016D_25" "SingleMuon_Run2016D_40" "SingleMuon_Run2016D_55" "SingleMuon_Run2016D_70" "SingleMuon_Run2016D_85" "SingleMuon_Run2016D_100" "SingleMuon_Run2016D_115" "SingleMuon_Run2016D_130" "SingleMuon_Run2016D_145" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
