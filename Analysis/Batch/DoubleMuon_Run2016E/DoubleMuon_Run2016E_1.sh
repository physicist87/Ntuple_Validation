#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_13" "DoubleMuon_Run2016E_26" "DoubleMuon_Run2016E_39" "DoubleMuon_Run2016E_52" "DoubleMuon_Run2016E_65" "DoubleMuon_Run2016E_78" "DoubleMuon_Run2016E_91" "DoubleMuon_Run2016E_104" "DoubleMuon_Run2016E_117" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
