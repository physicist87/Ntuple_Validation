#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_2" "SingleMuon_Run2016F_e_10" "SingleMuon_Run2016F_e_18" "SingleMuon_Run2016F_e_26" "SingleMuon_Run2016F_e_34" "SingleMuon_Run2016F_e_42" "SingleMuon_Run2016F_e_50" "SingleMuon_Run2016F_e_58" "SingleMuon_Run2016F_e_66" "SingleMuon_Run2016F_e_74" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
