#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_4" "DoubleMuon_Run2016C_13" "DoubleMuon_Run2016C_22" "DoubleMuon_Run2016C_31" "DoubleMuon_Run2016C_40" "DoubleMuon_Run2016C_49" "DoubleMuon_Run2016C_58" "DoubleMuon_Run2016C_67" "DoubleMuon_Run2016C_76" "DoubleMuon_Run2016C_85" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
