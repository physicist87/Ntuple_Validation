#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_11" "DoubleMuon_Run2016D_26" "DoubleMuon_Run2016D_41" "DoubleMuon_Run2016D_56" "DoubleMuon_Run2016D_71" "DoubleMuon_Run2016D_86" "DoubleMuon_Run2016D_101" "DoubleMuon_Run2016D_116" "DoubleMuon_Run2016D_131" "DoubleMuon_Run2016D_146" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
