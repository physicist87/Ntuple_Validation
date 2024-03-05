#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_12" "SingleMuon_Run2016Bv2_39" "SingleMuon_Run2016Bv2_66" "SingleMuon_Run2016Bv2_93" "SingleMuon_Run2016Bv2_120" "SingleMuon_Run2016Bv2_147" "SingleMuon_Run2016Bv2_174" "SingleMuon_Run2016Bv2_201" "SingleMuon_Run2016Bv2_228" "SingleMuon_Run2016Bv2_255" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
