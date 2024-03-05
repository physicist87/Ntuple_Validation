#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_9" "SingleMuon_Run2016D_24" "SingleMuon_Run2016D_39" "SingleMuon_Run2016D_54" "SingleMuon_Run2016D_69" "SingleMuon_Run2016D_84" "SingleMuon_Run2016D_99" "SingleMuon_Run2016D_114" "SingleMuon_Run2016D_129" "SingleMuon_Run2016D_144" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
