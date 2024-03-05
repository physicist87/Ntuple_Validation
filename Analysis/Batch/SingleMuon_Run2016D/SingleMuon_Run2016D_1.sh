#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_15" "SingleMuon_Run2016D_30" "SingleMuon_Run2016D_45" "SingleMuon_Run2016D_60" "SingleMuon_Run2016D_75" "SingleMuon_Run2016D_90" "SingleMuon_Run2016D_105" "SingleMuon_Run2016D_120" "SingleMuon_Run2016D_135" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
