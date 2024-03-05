#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_6" "SingleMuon_Run2016C_15" "SingleMuon_Run2016C_24" "SingleMuon_Run2016C_33" "SingleMuon_Run2016C_42" "SingleMuon_Run2016C_51" "SingleMuon_Run2016C_60" "SingleMuon_Run2016C_69" "SingleMuon_Run2016C_78" "SingleMuon_Run2016C_87" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
