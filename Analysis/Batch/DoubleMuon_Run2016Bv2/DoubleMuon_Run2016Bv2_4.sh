#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_3" "DoubleMuon_Run2016Bv2_30" "DoubleMuon_Run2016Bv2_57" "DoubleMuon_Run2016Bv2_84" "DoubleMuon_Run2016Bv2_111" "DoubleMuon_Run2016Bv2_138" "DoubleMuon_Run2016Bv2_165" "DoubleMuon_Run2016Bv2_192" "DoubleMuon_Run2016Bv2_219" "DoubleMuon_Run2016Bv2_246" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
