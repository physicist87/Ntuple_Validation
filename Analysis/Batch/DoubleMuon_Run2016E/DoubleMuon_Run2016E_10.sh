#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_9" "DoubleMuon_Run2016E_22" "DoubleMuon_Run2016E_35" "DoubleMuon_Run2016E_48" "DoubleMuon_Run2016E_61" "DoubleMuon_Run2016E_74" "DoubleMuon_Run2016E_87" "DoubleMuon_Run2016E_100" "DoubleMuon_Run2016E_113" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
