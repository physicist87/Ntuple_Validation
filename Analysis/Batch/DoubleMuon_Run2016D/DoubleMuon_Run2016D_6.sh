#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_5" "DoubleMuon_Run2016D_20" "DoubleMuon_Run2016D_35" "DoubleMuon_Run2016D_50" "DoubleMuon_Run2016D_65" "DoubleMuon_Run2016D_80" "DoubleMuon_Run2016D_95" "DoubleMuon_Run2016D_110" "DoubleMuon_Run2016D_125" "DoubleMuon_Run2016D_140" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
