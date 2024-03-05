#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_9" "DoubleMuon_Run2016C_18" "DoubleMuon_Run2016C_27" "DoubleMuon_Run2016C_36" "DoubleMuon_Run2016C_45" "DoubleMuon_Run2016C_54" "DoubleMuon_Run2016C_63" "DoubleMuon_Run2016C_72" "DoubleMuon_Run2016C_81" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
