#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_8" "DoubleMuon_Run2016C_17" "DoubleMuon_Run2016C_26" "DoubleMuon_Run2016C_35" "DoubleMuon_Run2016C_44" "DoubleMuon_Run2016C_53" "DoubleMuon_Run2016C_62" "DoubleMuon_Run2016C_71" "DoubleMuon_Run2016C_80" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
