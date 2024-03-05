#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_7" "DoubleMuon_Run2016D_22" "DoubleMuon_Run2016D_37" "DoubleMuon_Run2016D_52" "DoubleMuon_Run2016D_67" "DoubleMuon_Run2016D_82" "DoubleMuon_Run2016D_97" "DoubleMuon_Run2016D_112" "DoubleMuon_Run2016D_127" "DoubleMuon_Run2016D_142" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
