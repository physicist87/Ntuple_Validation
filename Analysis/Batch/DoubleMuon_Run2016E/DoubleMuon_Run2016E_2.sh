#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_1" "DoubleMuon_Run2016E_14" "DoubleMuon_Run2016E_27" "DoubleMuon_Run2016E_40" "DoubleMuon_Run2016E_53" "DoubleMuon_Run2016E_66" "DoubleMuon_Run2016E_79" "DoubleMuon_Run2016E_92" "DoubleMuon_Run2016E_105" "DoubleMuon_Run2016E_118" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
