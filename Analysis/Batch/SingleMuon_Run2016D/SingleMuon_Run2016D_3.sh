#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016D 
cmsenv 
set inputlists = ("SingleMuon_Run2016D_2" "SingleMuon_Run2016D_17" "SingleMuon_Run2016D_32" "SingleMuon_Run2016D_47" "SingleMuon_Run2016D_62" "SingleMuon_Run2016D_77" "SingleMuon_Run2016D_92" "SingleMuon_Run2016D_107" "SingleMuon_Run2016D_122" "SingleMuon_Run2016D_137" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016D 
   ./TopMass_analysis SingleMuon_Run2016D/${i}.list SingleMuon_Run2016D/${i}.txt 
end 
