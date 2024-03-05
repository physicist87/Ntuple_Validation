#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016D 
cmsenv 
set inputlists = ("DoubleMuon_Run2016D_2" "DoubleMuon_Run2016D_17" "DoubleMuon_Run2016D_32" "DoubleMuon_Run2016D_47" "DoubleMuon_Run2016D_62" "DoubleMuon_Run2016D_77" "DoubleMuon_Run2016D_92" "DoubleMuon_Run2016D_107" "DoubleMuon_Run2016D_122" "DoubleMuon_Run2016D_137" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016D 
   ./TopMass_analysis DoubleMuon_Run2016D/${i}.list DoubleMuon_Run2016D/${i}.txt 
end 
