#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_4" "DoubleMuon_Run2016F_e_12" "DoubleMuon_Run2016F_e_20" "DoubleMuon_Run2016F_e_28" "DoubleMuon_Run2016F_e_36" "DoubleMuon_Run2016F_e_44" "DoubleMuon_Run2016F_e_52" "DoubleMuon_Run2016F_e_60" "DoubleMuon_Run2016F_e_68" "DoubleMuon_Run2016F_e_76" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
