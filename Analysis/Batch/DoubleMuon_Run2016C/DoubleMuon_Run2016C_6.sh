#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_5" "DoubleMuon_Run2016C_14" "DoubleMuon_Run2016C_23" "DoubleMuon_Run2016C_32" "DoubleMuon_Run2016C_41" "DoubleMuon_Run2016C_50" "DoubleMuon_Run2016C_59" "DoubleMuon_Run2016C_68" "DoubleMuon_Run2016C_77" "DoubleMuon_Run2016C_86" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
