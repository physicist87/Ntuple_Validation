#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_8" "SingleMuon_Run2016Bv2_35" "SingleMuon_Run2016Bv2_62" "SingleMuon_Run2016Bv2_89" "SingleMuon_Run2016Bv2_116" "SingleMuon_Run2016Bv2_143" "SingleMuon_Run2016Bv2_170" "SingleMuon_Run2016Bv2_197" "SingleMuon_Run2016Bv2_224" "SingleMuon_Run2016Bv2_251" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
