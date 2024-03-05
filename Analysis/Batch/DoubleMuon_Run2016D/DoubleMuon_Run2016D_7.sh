#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_6" "DoubleMuon_Run2016D_21" "DoubleMuon_Run2016D_36" "DoubleMuon_Run2016D_51" "DoubleMuon_Run2016D_66" "DoubleMuon_Run2016D_81" "DoubleMuon_Run2016D_96" "DoubleMuon_Run2016D_111" "DoubleMuon_Run2016D_126" "DoubleMuon_Run2016D_141" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
