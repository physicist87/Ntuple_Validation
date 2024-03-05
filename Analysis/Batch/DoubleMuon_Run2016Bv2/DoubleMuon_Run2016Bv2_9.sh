#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_8" "DoubleMuon_Run2016Bv2_35" "DoubleMuon_Run2016Bv2_62" "DoubleMuon_Run2016Bv2_89" "DoubleMuon_Run2016Bv2_116" "DoubleMuon_Run2016Bv2_143" "DoubleMuon_Run2016Bv2_170" "DoubleMuon_Run2016Bv2_197" "DoubleMuon_Run2016Bv2_224" "DoubleMuon_Run2016Bv2_251" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
