#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_12" "DoubleMuon_Run2016Bv2_39" "DoubleMuon_Run2016Bv2_66" "DoubleMuon_Run2016Bv2_93" "DoubleMuon_Run2016Bv2_120" "DoubleMuon_Run2016Bv2_147" "DoubleMuon_Run2016Bv2_174" "DoubleMuon_Run2016Bv2_201" "DoubleMuon_Run2016Bv2_228" "DoubleMuon_Run2016Bv2_255" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
