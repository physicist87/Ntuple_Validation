#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_23" "SingleMuon_Run2016Bv2_50" "SingleMuon_Run2016Bv2_77" "SingleMuon_Run2016Bv2_104" "SingleMuon_Run2016Bv2_131" "SingleMuon_Run2016Bv2_158" "SingleMuon_Run2016Bv2_185" "SingleMuon_Run2016Bv2_212" "SingleMuon_Run2016Bv2_239" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
