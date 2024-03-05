#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_7" "DoubleMuon_Run2016Bv2_34" "DoubleMuon_Run2016Bv2_61" "DoubleMuon_Run2016Bv2_88" "DoubleMuon_Run2016Bv2_115" "DoubleMuon_Run2016Bv2_142" "DoubleMuon_Run2016Bv2_169" "DoubleMuon_Run2016Bv2_196" "DoubleMuon_Run2016Bv2_223" "DoubleMuon_Run2016Bv2_250" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
