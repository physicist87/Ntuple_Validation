#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_11" "DoubleMuon_Run2016Bv2_38" "DoubleMuon_Run2016Bv2_65" "DoubleMuon_Run2016Bv2_92" "DoubleMuon_Run2016Bv2_119" "DoubleMuon_Run2016Bv2_146" "DoubleMuon_Run2016Bv2_173" "DoubleMuon_Run2016Bv2_200" "DoubleMuon_Run2016Bv2_227" "DoubleMuon_Run2016Bv2_254" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
