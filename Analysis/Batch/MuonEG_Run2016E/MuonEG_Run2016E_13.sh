#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_12" "MuonEG_Run2016E_25" "MuonEG_Run2016E_38" "MuonEG_Run2016E_51" "MuonEG_Run2016E_64" "MuonEG_Run2016E_77" "MuonEG_Run2016E_90" "MuonEG_Run2016E_103" "MuonEG_Run2016E_116" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
