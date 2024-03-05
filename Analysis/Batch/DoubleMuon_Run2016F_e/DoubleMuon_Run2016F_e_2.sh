#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_1" "DoubleMuon_Run2016F_e_9" "DoubleMuon_Run2016F_e_17" "DoubleMuon_Run2016F_e_25" "DoubleMuon_Run2016F_e_33" "DoubleMuon_Run2016F_e_41" "DoubleMuon_Run2016F_e_49" "DoubleMuon_Run2016F_e_57" "DoubleMuon_Run2016F_e_65" "DoubleMuon_Run2016F_e_73" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
