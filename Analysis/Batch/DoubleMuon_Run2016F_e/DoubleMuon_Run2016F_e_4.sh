#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_3" "DoubleMuon_Run2016F_e_11" "DoubleMuon_Run2016F_e_19" "DoubleMuon_Run2016F_e_27" "DoubleMuon_Run2016F_e_35" "DoubleMuon_Run2016F_e_43" "DoubleMuon_Run2016F_e_51" "DoubleMuon_Run2016F_e_59" "DoubleMuon_Run2016F_e_67" "DoubleMuon_Run2016F_e_75" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
