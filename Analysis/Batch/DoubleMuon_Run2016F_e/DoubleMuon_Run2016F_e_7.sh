#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016F_e 
cmsenv 
set inputlists = ("DoubleMuon_Run2016F_e_6" "DoubleMuon_Run2016F_e_14" "DoubleMuon_Run2016F_e_22" "DoubleMuon_Run2016F_e_30" "DoubleMuon_Run2016F_e_38" "DoubleMuon_Run2016F_e_46" "DoubleMuon_Run2016F_e_54" "DoubleMuon_Run2016F_e_62" "DoubleMuon_Run2016F_e_70" "DoubleMuon_Run2016F_e_78" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016F_e 
   ./TopMass_analysis DoubleMuon_Run2016F_e/${i}.list DoubleMuon_Run2016F_e/${i}.txt 
end 
