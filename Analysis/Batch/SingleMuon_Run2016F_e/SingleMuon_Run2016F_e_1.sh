#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_8" "SingleMuon_Run2016F_e_16" "SingleMuon_Run2016F_e_24" "SingleMuon_Run2016F_e_32" "SingleMuon_Run2016F_e_40" "SingleMuon_Run2016F_e_48" "SingleMuon_Run2016F_e_56" "SingleMuon_Run2016F_e_64" "SingleMuon_Run2016F_e_72" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
