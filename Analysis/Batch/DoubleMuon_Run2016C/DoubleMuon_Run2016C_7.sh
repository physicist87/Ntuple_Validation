#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_6" "DoubleMuon_Run2016C_15" "DoubleMuon_Run2016C_24" "DoubleMuon_Run2016C_33" "DoubleMuon_Run2016C_42" "DoubleMuon_Run2016C_51" "DoubleMuon_Run2016C_60" "DoubleMuon_Run2016C_69" "DoubleMuon_Run2016C_78" "DoubleMuon_Run2016C_87" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
