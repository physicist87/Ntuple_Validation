#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_3" "MuonEG_Run2016E_16" "MuonEG_Run2016E_29" "MuonEG_Run2016E_42" "MuonEG_Run2016E_55" "MuonEG_Run2016E_68" "MuonEG_Run2016E_81" "MuonEG_Run2016E_94" "MuonEG_Run2016E_107" "MuonEG_Run2016E_120" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
