#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_8" "MuonEG_Run2016E_21" "MuonEG_Run2016E_34" "MuonEG_Run2016E_47" "MuonEG_Run2016E_60" "MuonEG_Run2016E_73" "MuonEG_Run2016E_86" "MuonEG_Run2016E_99" "MuonEG_Run2016E_112" "MuonEG_Run2016E_125" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
