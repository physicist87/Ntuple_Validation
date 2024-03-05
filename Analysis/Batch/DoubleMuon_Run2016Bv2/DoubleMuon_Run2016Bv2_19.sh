#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_18" "DoubleMuon_Run2016Bv2_45" "DoubleMuon_Run2016Bv2_72" "DoubleMuon_Run2016Bv2_99" "DoubleMuon_Run2016Bv2_126" "DoubleMuon_Run2016Bv2_153" "DoubleMuon_Run2016Bv2_180" "DoubleMuon_Run2016Bv2_207" "DoubleMuon_Run2016Bv2_234" "DoubleMuon_Run2016Bv2_261" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
