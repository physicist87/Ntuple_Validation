#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_3" "DoubleMuon_Run2016E_16" "DoubleMuon_Run2016E_29" "DoubleMuon_Run2016E_42" "DoubleMuon_Run2016E_55" "DoubleMuon_Run2016E_68" "DoubleMuon_Run2016E_81" "DoubleMuon_Run2016E_94" "DoubleMuon_Run2016E_107" "DoubleMuon_Run2016E_120" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
