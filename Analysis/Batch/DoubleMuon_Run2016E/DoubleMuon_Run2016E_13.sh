#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016E 
cmsenv 
set inputlists = ("DoubleMuon_Run2016E_12" "DoubleMuon_Run2016E_25" "DoubleMuon_Run2016E_38" "DoubleMuon_Run2016E_51" "DoubleMuon_Run2016E_64" "DoubleMuon_Run2016E_77" "DoubleMuon_Run2016E_90" "DoubleMuon_Run2016E_103" "DoubleMuon_Run2016E_116" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016E 
   ./TopMass_analysis DoubleMuon_Run2016E/${i}.list DoubleMuon_Run2016E/${i}.txt 
end 
