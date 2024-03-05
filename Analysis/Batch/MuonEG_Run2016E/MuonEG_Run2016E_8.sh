#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/MuonEG_Run2016E 
cmsenv 
set inputlists = ("MuonEG_Run2016E_7" "MuonEG_Run2016E_20" "MuonEG_Run2016E_33" "MuonEG_Run2016E_46" "MuonEG_Run2016E_59" "MuonEG_Run2016E_72" "MuonEG_Run2016E_85" "MuonEG_Run2016E_98" "MuonEG_Run2016E_111" "MuonEG_Run2016E_124" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/MuonEG_Run2016E 
   ./TopMass_analysis MuonEG_Run2016E/${i}.list MuonEG_Run2016E/${i}.txt 
end 
