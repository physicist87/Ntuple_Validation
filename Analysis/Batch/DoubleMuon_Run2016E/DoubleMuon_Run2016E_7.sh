#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_6" "DoubleMuon_Run2016E_19" "DoubleMuon_Run2016E_32" "DoubleMuon_Run2016E_45" "DoubleMuon_Run2016E_58" "DoubleMuon_Run2016E_71" "DoubleMuon_Run2016E_84" "DoubleMuon_Run2016E_97" "DoubleMuon_Run2016E_110" "DoubleMuon_Run2016E_123" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
