#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_10" "DoubleMuon_Run2016E_23" "DoubleMuon_Run2016E_36" "DoubleMuon_Run2016E_49" "DoubleMuon_Run2016E_62" "DoubleMuon_Run2016E_75" "DoubleMuon_Run2016E_88" "DoubleMuon_Run2016E_101" "DoubleMuon_Run2016E_114" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
