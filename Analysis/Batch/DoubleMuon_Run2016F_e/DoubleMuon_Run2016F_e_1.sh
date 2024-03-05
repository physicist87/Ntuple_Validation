#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_8" "DoubleMuon_Run2016F_e_16" "DoubleMuon_Run2016F_e_24" "DoubleMuon_Run2016F_e_32" "DoubleMuon_Run2016F_e_40" "DoubleMuon_Run2016F_e_48" "DoubleMuon_Run2016F_e_56" "DoubleMuon_Run2016F_e_64" "DoubleMuon_Run2016F_e_72" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
