#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_4" "SingleMuon_Run2016E_17" "SingleMuon_Run2016E_30" "SingleMuon_Run2016E_43" "SingleMuon_Run2016E_56" "SingleMuon_Run2016E_69" "SingleMuon_Run2016E_82" "SingleMuon_Run2016E_95" "SingleMuon_Run2016E_108" "SingleMuon_Run2016E_121" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
