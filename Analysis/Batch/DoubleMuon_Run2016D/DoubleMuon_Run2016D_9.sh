#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_8" "DoubleMuon_Run2016D_23" "DoubleMuon_Run2016D_38" "DoubleMuon_Run2016D_53" "DoubleMuon_Run2016D_68" "DoubleMuon_Run2016D_83" "DoubleMuon_Run2016D_98" "DoubleMuon_Run2016D_113" "DoubleMuon_Run2016D_128" "DoubleMuon_Run2016D_143" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
