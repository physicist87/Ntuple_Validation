#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_7" "SingleMuon_Run2016F_e_15" "SingleMuon_Run2016F_e_23" "SingleMuon_Run2016F_e_31" "SingleMuon_Run2016F_e_39" "SingleMuon_Run2016F_e_47" "SingleMuon_Run2016F_e_55" "SingleMuon_Run2016F_e_63" "SingleMuon_Run2016F_e_71" "SingleMuon_Run2016F_e_79" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
