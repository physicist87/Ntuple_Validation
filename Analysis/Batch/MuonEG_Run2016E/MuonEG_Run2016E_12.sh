#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_11" "MuonEG_Run2016E_24" "MuonEG_Run2016E_37" "MuonEG_Run2016E_50" "MuonEG_Run2016E_63" "MuonEG_Run2016E_76" "MuonEG_Run2016E_89" "MuonEG_Run2016E_102" "MuonEG_Run2016E_115" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
