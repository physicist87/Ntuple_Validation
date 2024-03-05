#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_12" "SingleMuon_Run2016D_27" "SingleMuon_Run2016D_42" "SingleMuon_Run2016D_57" "SingleMuon_Run2016D_72" "SingleMuon_Run2016D_87" "SingleMuon_Run2016D_102" "SingleMuon_Run2016D_117" "SingleMuon_Run2016D_132" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
