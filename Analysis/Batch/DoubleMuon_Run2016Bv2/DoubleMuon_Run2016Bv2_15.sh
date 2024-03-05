#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_14" "DoubleMuon_Run2016Bv2_41" "DoubleMuon_Run2016Bv2_68" "DoubleMuon_Run2016Bv2_95" "DoubleMuon_Run2016Bv2_122" "DoubleMuon_Run2016Bv2_149" "DoubleMuon_Run2016Bv2_176" "DoubleMuon_Run2016Bv2_203" "DoubleMuon_Run2016Bv2_230" "DoubleMuon_Run2016Bv2_257" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
