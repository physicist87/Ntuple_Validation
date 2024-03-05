#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_8" "DoubleMuon_Run2016E_21" "DoubleMuon_Run2016E_34" "DoubleMuon_Run2016E_47" "DoubleMuon_Run2016E_60" "DoubleMuon_Run2016E_73" "DoubleMuon_Run2016E_86" "DoubleMuon_Run2016E_99" "DoubleMuon_Run2016E_112" "DoubleMuon_Run2016E_125" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
