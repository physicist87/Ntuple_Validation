#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_13" "SingleMuon_Run2016D_28" "SingleMuon_Run2016D_43" "SingleMuon_Run2016D_58" "SingleMuon_Run2016D_73" "SingleMuon_Run2016D_88" "SingleMuon_Run2016D_103" "SingleMuon_Run2016D_118" "SingleMuon_Run2016D_133" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
