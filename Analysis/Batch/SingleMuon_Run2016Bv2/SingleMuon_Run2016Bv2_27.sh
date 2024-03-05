#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_26" "SingleMuon_Run2016Bv2_53" "SingleMuon_Run2016Bv2_80" "SingleMuon_Run2016Bv2_107" "SingleMuon_Run2016Bv2_134" "SingleMuon_Run2016Bv2_161" "SingleMuon_Run2016Bv2_188" "SingleMuon_Run2016Bv2_215" "SingleMuon_Run2016Bv2_242" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
