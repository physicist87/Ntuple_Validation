#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_13" "DoubleMuon_Run2016D_28" "DoubleMuon_Run2016D_43" "DoubleMuon_Run2016D_58" "DoubleMuon_Run2016D_73" "DoubleMuon_Run2016D_88" "DoubleMuon_Run2016D_103" "DoubleMuon_Run2016D_118" "DoubleMuon_Run2016D_133" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
