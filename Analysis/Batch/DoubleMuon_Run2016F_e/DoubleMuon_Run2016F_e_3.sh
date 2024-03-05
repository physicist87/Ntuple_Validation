#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_2" "DoubleMuon_Run2016F_e_10" "DoubleMuon_Run2016F_e_18" "DoubleMuon_Run2016F_e_26" "DoubleMuon_Run2016F_e_34" "DoubleMuon_Run2016F_e_42" "DoubleMuon_Run2016F_e_50" "DoubleMuon_Run2016F_e_58" "DoubleMuon_Run2016F_e_66" "DoubleMuon_Run2016F_e_74" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
