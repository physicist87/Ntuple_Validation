#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_7" "DoubleMuon_Run2016F_e_15" "DoubleMuon_Run2016F_e_23" "DoubleMuon_Run2016F_e_31" "DoubleMuon_Run2016F_e_39" "DoubleMuon_Run2016F_e_47" "DoubleMuon_Run2016F_e_55" "DoubleMuon_Run2016F_e_63" "DoubleMuon_Run2016F_e_71" "DoubleMuon_Run2016F_e_79" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
