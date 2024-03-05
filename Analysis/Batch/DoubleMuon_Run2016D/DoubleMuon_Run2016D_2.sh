#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_1" "DoubleMuon_Run2016D_16" "DoubleMuon_Run2016D_31" "DoubleMuon_Run2016D_46" "DoubleMuon_Run2016D_61" "DoubleMuon_Run2016D_76" "DoubleMuon_Run2016D_91" "DoubleMuon_Run2016D_106" "DoubleMuon_Run2016D_121" "DoubleMuon_Run2016D_136" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
