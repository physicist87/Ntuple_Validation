#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_5" "DoubleMuon_Run2016F_e_13" "DoubleMuon_Run2016F_e_21" "DoubleMuon_Run2016F_e_29" "DoubleMuon_Run2016F_e_37" "DoubleMuon_Run2016F_e_45" "DoubleMuon_Run2016F_e_53" "DoubleMuon_Run2016F_e_61" "DoubleMuon_Run2016F_e_69" "DoubleMuon_Run2016F_e_77" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
