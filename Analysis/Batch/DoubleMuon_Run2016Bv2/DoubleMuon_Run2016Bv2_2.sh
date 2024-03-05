#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_1" "DoubleMuon_Run2016Bv2_28" "DoubleMuon_Run2016Bv2_55" "DoubleMuon_Run2016Bv2_82" "DoubleMuon_Run2016Bv2_109" "DoubleMuon_Run2016Bv2_136" "DoubleMuon_Run2016Bv2_163" "DoubleMuon_Run2016Bv2_190" "DoubleMuon_Run2016Bv2_217" "DoubleMuon_Run2016Bv2_244" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
