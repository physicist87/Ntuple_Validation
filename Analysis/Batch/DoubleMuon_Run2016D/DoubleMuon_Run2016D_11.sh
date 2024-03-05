#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_10" "DoubleMuon_Run2016D_25" "DoubleMuon_Run2016D_40" "DoubleMuon_Run2016D_55" "DoubleMuon_Run2016D_70" "DoubleMuon_Run2016D_85" "DoubleMuon_Run2016D_100" "DoubleMuon_Run2016D_115" "DoubleMuon_Run2016D_130" "DoubleMuon_Run2016D_145" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
