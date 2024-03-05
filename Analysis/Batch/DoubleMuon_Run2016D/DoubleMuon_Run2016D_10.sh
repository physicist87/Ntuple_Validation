#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_9" "DoubleMuon_Run2016D_24" "DoubleMuon_Run2016D_39" "DoubleMuon_Run2016D_54" "DoubleMuon_Run2016D_69" "DoubleMuon_Run2016D_84" "DoubleMuon_Run2016D_99" "DoubleMuon_Run2016D_114" "DoubleMuon_Run2016D_129" "DoubleMuon_Run2016D_144" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
