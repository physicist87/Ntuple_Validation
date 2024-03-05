#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016F_e 
cmsenv 
set inputlists = ("SingleMuon_Run2016F_e_4" "SingleMuon_Run2016F_e_12" "SingleMuon_Run2016F_e_20" "SingleMuon_Run2016F_e_28" "SingleMuon_Run2016F_e_36" "SingleMuon_Run2016F_e_44" "SingleMuon_Run2016F_e_52" "SingleMuon_Run2016F_e_60" "SingleMuon_Run2016F_e_68" "SingleMuon_Run2016F_e_76" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016F_e 
   ./TopMass_analysis SingleMuon_Run2016F_e/${i}.list SingleMuon_Run2016F_e/${i}.txt 
end 
