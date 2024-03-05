#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_25" "DoubleMuon_Run2016Bv2_52" "DoubleMuon_Run2016Bv2_79" "DoubleMuon_Run2016Bv2_106" "DoubleMuon_Run2016Bv2_133" "DoubleMuon_Run2016Bv2_160" "DoubleMuon_Run2016Bv2_187" "DoubleMuon_Run2016Bv2_214" "DoubleMuon_Run2016Bv2_241" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
