#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_6" "SingleMuon_Run2016E_19" "SingleMuon_Run2016E_32" "SingleMuon_Run2016E_45" "SingleMuon_Run2016E_58" "SingleMuon_Run2016E_71" "SingleMuon_Run2016E_84" "SingleMuon_Run2016E_97" "SingleMuon_Run2016E_110" "SingleMuon_Run2016E_123" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
