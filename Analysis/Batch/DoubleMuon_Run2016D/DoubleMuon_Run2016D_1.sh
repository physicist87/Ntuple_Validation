#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_15" "DoubleMuon_Run2016D_30" "DoubleMuon_Run2016D_45" "DoubleMuon_Run2016D_60" "DoubleMuon_Run2016D_75" "DoubleMuon_Run2016D_90" "DoubleMuon_Run2016D_105" "DoubleMuon_Run2016D_120" "DoubleMuon_Run2016D_135" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
