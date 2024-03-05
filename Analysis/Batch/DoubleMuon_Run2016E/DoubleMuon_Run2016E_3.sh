#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_2" "DoubleMuon_Run2016E_15" "DoubleMuon_Run2016E_28" "DoubleMuon_Run2016E_41" "DoubleMuon_Run2016E_54" "DoubleMuon_Run2016E_67" "DoubleMuon_Run2016E_80" "DoubleMuon_Run2016E_93" "DoubleMuon_Run2016E_106" "DoubleMuon_Run2016E_119" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
