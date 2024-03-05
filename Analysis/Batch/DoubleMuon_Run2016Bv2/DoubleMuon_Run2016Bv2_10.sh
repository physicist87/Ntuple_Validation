#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_9" "DoubleMuon_Run2016Bv2_36" "DoubleMuon_Run2016Bv2_63" "DoubleMuon_Run2016Bv2_90" "DoubleMuon_Run2016Bv2_117" "DoubleMuon_Run2016Bv2_144" "DoubleMuon_Run2016Bv2_171" "DoubleMuon_Run2016Bv2_198" "DoubleMuon_Run2016Bv2_225" "DoubleMuon_Run2016Bv2_252" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
