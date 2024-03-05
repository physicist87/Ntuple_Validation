#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_1" "SingleMuon_Run2016C_10" "SingleMuon_Run2016C_19" "SingleMuon_Run2016C_28" "SingleMuon_Run2016C_37" "SingleMuon_Run2016C_46" "SingleMuon_Run2016C_55" "SingleMuon_Run2016C_64" "SingleMuon_Run2016C_73" "SingleMuon_Run2016C_82" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
