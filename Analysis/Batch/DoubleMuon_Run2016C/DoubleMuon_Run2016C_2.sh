#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_1" "DoubleMuon_Run2016C_10" "DoubleMuon_Run2016C_19" "DoubleMuon_Run2016C_28" "DoubleMuon_Run2016C_37" "DoubleMuon_Run2016C_46" "DoubleMuon_Run2016C_55" "DoubleMuon_Run2016C_64" "DoubleMuon_Run2016C_73" "DoubleMuon_Run2016C_82" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
