#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_12" "DoubleMuon_Run2016D_27" "DoubleMuon_Run2016D_42" "DoubleMuon_Run2016D_57" "DoubleMuon_Run2016D_72" "DoubleMuon_Run2016D_87" "DoubleMuon_Run2016D_102" "DoubleMuon_Run2016D_117" "DoubleMuon_Run2016D_132" "DoubleMuon_Run2016D_147" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
