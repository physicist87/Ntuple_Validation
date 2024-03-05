#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016C 
cmsenv 
set inputlists = ("SingleMuon_Run2016C_9" "SingleMuon_Run2016C_18" "SingleMuon_Run2016C_27" "SingleMuon_Run2016C_36" "SingleMuon_Run2016C_45" "SingleMuon_Run2016C_54" "SingleMuon_Run2016C_63" "SingleMuon_Run2016C_72" "SingleMuon_Run2016C_81" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016C 
   ./TopMass_analysis SingleMuon_Run2016C/${i}.list SingleMuon_Run2016C/${i}.txt 
end 
