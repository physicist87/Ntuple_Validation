#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_4" "DoubleMuon_Run2016Bv2_31" "DoubleMuon_Run2016Bv2_58" "DoubleMuon_Run2016Bv2_85" "DoubleMuon_Run2016Bv2_112" "DoubleMuon_Run2016Bv2_139" "DoubleMuon_Run2016Bv2_166" "DoubleMuon_Run2016Bv2_193" "DoubleMuon_Run2016Bv2_220" "DoubleMuon_Run2016Bv2_247" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
