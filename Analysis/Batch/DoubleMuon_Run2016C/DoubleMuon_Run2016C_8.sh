#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_7" "DoubleMuon_Run2016C_16" "DoubleMuon_Run2016C_25" "DoubleMuon_Run2016C_34" "DoubleMuon_Run2016C_43" "DoubleMuon_Run2016C_52" "DoubleMuon_Run2016C_61" "DoubleMuon_Run2016C_70" "DoubleMuon_Run2016C_79" "DoubleMuon_Run2016C_88" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
