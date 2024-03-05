#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_3" "SingleMuon_Run2016Bv2_30" "SingleMuon_Run2016Bv2_57" "SingleMuon_Run2016Bv2_84" "SingleMuon_Run2016Bv2_111" "SingleMuon_Run2016Bv2_138" "SingleMuon_Run2016Bv2_165" "SingleMuon_Run2016Bv2_192" "SingleMuon_Run2016Bv2_219" "SingleMuon_Run2016Bv2_246" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
