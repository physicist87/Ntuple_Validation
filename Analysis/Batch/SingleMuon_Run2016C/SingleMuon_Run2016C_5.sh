#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_4" "SingleMuon_Run2016C_13" "SingleMuon_Run2016C_22" "SingleMuon_Run2016C_31" "SingleMuon_Run2016C_40" "SingleMuon_Run2016C_49" "SingleMuon_Run2016C_58" "SingleMuon_Run2016C_67" "SingleMuon_Run2016C_76" "SingleMuon_Run2016C_85" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
