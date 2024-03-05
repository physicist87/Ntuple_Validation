#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_13" "MuonEG_Run2016E_26" "MuonEG_Run2016E_39" "MuonEG_Run2016E_52" "MuonEG_Run2016E_65" "MuonEG_Run2016E_78" "MuonEG_Run2016E_91" "MuonEG_Run2016E_104" "MuonEG_Run2016E_117" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
