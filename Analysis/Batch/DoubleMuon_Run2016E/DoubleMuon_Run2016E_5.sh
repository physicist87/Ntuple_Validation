#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_4" "DoubleMuon_Run2016E_17" "DoubleMuon_Run2016E_30" "DoubleMuon_Run2016E_43" "DoubleMuon_Run2016E_56" "DoubleMuon_Run2016E_69" "DoubleMuon_Run2016E_82" "DoubleMuon_Run2016E_95" "DoubleMuon_Run2016E_108" "DoubleMuon_Run2016E_121" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
