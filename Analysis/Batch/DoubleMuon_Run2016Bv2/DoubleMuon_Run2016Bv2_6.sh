#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_5" "DoubleMuon_Run2016Bv2_32" "DoubleMuon_Run2016Bv2_59" "DoubleMuon_Run2016Bv2_86" "DoubleMuon_Run2016Bv2_113" "DoubleMuon_Run2016Bv2_140" "DoubleMuon_Run2016Bv2_167" "DoubleMuon_Run2016Bv2_194" "DoubleMuon_Run2016Bv2_221" "DoubleMuon_Run2016Bv2_248" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
