#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_23" "DoubleMuon_Run2016Bv2_50" "DoubleMuon_Run2016Bv2_77" "DoubleMuon_Run2016Bv2_104" "DoubleMuon_Run2016Bv2_131" "DoubleMuon_Run2016Bv2_158" "DoubleMuon_Run2016Bv2_185" "DoubleMuon_Run2016Bv2_212" "DoubleMuon_Run2016Bv2_239" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
