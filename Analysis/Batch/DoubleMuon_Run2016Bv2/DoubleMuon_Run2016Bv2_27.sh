#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_26" "DoubleMuon_Run2016Bv2_53" "DoubleMuon_Run2016Bv2_80" "DoubleMuon_Run2016Bv2_107" "DoubleMuon_Run2016Bv2_134" "DoubleMuon_Run2016Bv2_161" "DoubleMuon_Run2016Bv2_188" "DoubleMuon_Run2016Bv2_215" "DoubleMuon_Run2016Bv2_242" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
