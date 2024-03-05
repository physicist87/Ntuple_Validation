#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_16" "SingleMuon_Run2016Bv2_43" "SingleMuon_Run2016Bv2_70" "SingleMuon_Run2016Bv2_97" "SingleMuon_Run2016Bv2_124" "SingleMuon_Run2016Bv2_151" "SingleMuon_Run2016Bv2_178" "SingleMuon_Run2016Bv2_205" "SingleMuon_Run2016Bv2_232" "SingleMuon_Run2016Bv2_259" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
