#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_5" "MuonEG_Run2016E_18" "MuonEG_Run2016E_31" "MuonEG_Run2016E_44" "MuonEG_Run2016E_57" "MuonEG_Run2016E_70" "MuonEG_Run2016E_83" "MuonEG_Run2016E_96" "MuonEG_Run2016E_109" "MuonEG_Run2016E_122" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
