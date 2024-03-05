#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_3" "DoubleMuon_Run2016C_12" "DoubleMuon_Run2016C_21" "DoubleMuon_Run2016C_30" "DoubleMuon_Run2016C_39" "DoubleMuon_Run2016C_48" "DoubleMuon_Run2016C_57" "DoubleMuon_Run2016C_66" "DoubleMuon_Run2016C_75" "DoubleMuon_Run2016C_84" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
