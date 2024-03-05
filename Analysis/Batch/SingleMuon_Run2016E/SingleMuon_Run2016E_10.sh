#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016E 
cmsenv 
set inputlists = ("SingleMuon_Run2016E_9" "SingleMuon_Run2016E_22" "SingleMuon_Run2016E_35" "SingleMuon_Run2016E_48" "SingleMuon_Run2016E_61" "SingleMuon_Run2016E_74" "SingleMuon_Run2016E_87" "SingleMuon_Run2016E_100" "SingleMuon_Run2016E_113" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016E 
   ./TopMass_analysis SingleMuon_Run2016E/${i}.list SingleMuon_Run2016E/${i}.txt 
end 
