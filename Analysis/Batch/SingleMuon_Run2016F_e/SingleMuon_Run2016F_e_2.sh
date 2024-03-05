#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_1" "SingleMuon_Run2016F_e_9" "SingleMuon_Run2016F_e_17" "SingleMuon_Run2016F_e_25" "SingleMuon_Run2016F_e_33" "SingleMuon_Run2016F_e_41" "SingleMuon_Run2016F_e_49" "SingleMuon_Run2016F_e_57" "SingleMuon_Run2016F_e_65" "SingleMuon_Run2016F_e_73" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
