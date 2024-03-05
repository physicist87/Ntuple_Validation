#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_4" "DoubleMuon_Run2016D_19" "DoubleMuon_Run2016D_34" "DoubleMuon_Run2016D_49" "DoubleMuon_Run2016D_64" "DoubleMuon_Run2016D_79" "DoubleMuon_Run2016D_94" "DoubleMuon_Run2016D_109" "DoubleMuon_Run2016D_124" "DoubleMuon_Run2016D_139" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
