#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_5" "SingleMuon_Run2016C_14" "SingleMuon_Run2016C_23" "SingleMuon_Run2016C_32" "SingleMuon_Run2016C_41" "SingleMuon_Run2016C_50" "SingleMuon_Run2016C_59" "SingleMuon_Run2016C_68" "SingleMuon_Run2016C_77" "SingleMuon_Run2016C_86" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
