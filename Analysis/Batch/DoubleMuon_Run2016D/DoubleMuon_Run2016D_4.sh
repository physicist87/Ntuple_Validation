#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_3" "DoubleMuon_Run2016D_18" "DoubleMuon_Run2016D_33" "DoubleMuon_Run2016D_48" "DoubleMuon_Run2016D_63" "DoubleMuon_Run2016D_78" "DoubleMuon_Run2016D_93" "DoubleMuon_Run2016D_108" "DoubleMuon_Run2016D_123" "DoubleMuon_Run2016D_138" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
