#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_7" "SingleMuon_Run2016C_16" "SingleMuon_Run2016C_25" "SingleMuon_Run2016C_34" "SingleMuon_Run2016C_43" "SingleMuon_Run2016C_52" "SingleMuon_Run2016C_61" "SingleMuon_Run2016C_70" "SingleMuon_Run2016C_79" "SingleMuon_Run2016C_88" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
