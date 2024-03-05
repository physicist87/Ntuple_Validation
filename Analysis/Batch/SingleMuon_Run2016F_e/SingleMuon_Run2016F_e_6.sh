#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_5" "SingleMuon_Run2016F_e_13" "SingleMuon_Run2016F_e_21" "SingleMuon_Run2016F_e_29" "SingleMuon_Run2016F_e_37" "SingleMuon_Run2016F_e_45" "SingleMuon_Run2016F_e_53" "SingleMuon_Run2016F_e_61" "SingleMuon_Run2016F_e_69" "SingleMuon_Run2016F_e_77" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
