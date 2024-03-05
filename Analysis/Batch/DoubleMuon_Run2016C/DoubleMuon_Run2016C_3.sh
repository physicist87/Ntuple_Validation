#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016C 
cmsenv 
set inputlists = ("DoubleMuon_Run2016C_2" "DoubleMuon_Run2016C_11" "DoubleMuon_Run2016C_20" "DoubleMuon_Run2016C_29" "DoubleMuon_Run2016C_38" "DoubleMuon_Run2016C_47" "DoubleMuon_Run2016C_56" "DoubleMuon_Run2016C_65" "DoubleMuon_Run2016C_74" "DoubleMuon_Run2016C_83" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016C 
   ./TopMass_analysis DoubleMuon_Run2016C/${i}.list DoubleMuon_Run2016C/${i}.txt 
end 
