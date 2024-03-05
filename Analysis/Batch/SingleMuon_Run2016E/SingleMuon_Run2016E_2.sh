#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_1" "SingleMuon_Run2016E_14" "SingleMuon_Run2016E_27" "SingleMuon_Run2016E_40" "SingleMuon_Run2016E_53" "SingleMuon_Run2016E_66" "SingleMuon_Run2016E_79" "SingleMuon_Run2016E_92" "SingleMuon_Run2016E_105" "SingleMuon_Run2016E_118" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
