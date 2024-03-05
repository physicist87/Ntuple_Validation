#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_2" "SingleMuon_Run2016E_15" "SingleMuon_Run2016E_28" "SingleMuon_Run2016E_41" "SingleMuon_Run2016E_54" "SingleMuon_Run2016E_67" "SingleMuon_Run2016E_80" "SingleMuon_Run2016E_93" "SingleMuon_Run2016E_106" "SingleMuon_Run2016E_119" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
