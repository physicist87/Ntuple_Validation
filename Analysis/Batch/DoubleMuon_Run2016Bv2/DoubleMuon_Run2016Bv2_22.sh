#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_21" "DoubleMuon_Run2016Bv2_48" "DoubleMuon_Run2016Bv2_75" "DoubleMuon_Run2016Bv2_102" "DoubleMuon_Run2016Bv2_129" "DoubleMuon_Run2016Bv2_156" "DoubleMuon_Run2016Bv2_183" "DoubleMuon_Run2016Bv2_210" "DoubleMuon_Run2016Bv2_237" "DoubleMuon_Run2016Bv2_264" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
