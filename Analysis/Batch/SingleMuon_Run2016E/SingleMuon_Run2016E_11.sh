#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_10" "SingleMuon_Run2016E_23" "SingleMuon_Run2016E_36" "SingleMuon_Run2016E_49" "SingleMuon_Run2016E_62" "SingleMuon_Run2016E_75" "SingleMuon_Run2016E_88" "SingleMuon_Run2016E_101" "SingleMuon_Run2016E_114" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
