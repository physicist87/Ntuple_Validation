#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_17" "SingleMuon_Run2016Bv2_44" "SingleMuon_Run2016Bv2_71" "SingleMuon_Run2016Bv2_98" "SingleMuon_Run2016Bv2_125" "SingleMuon_Run2016Bv2_152" "SingleMuon_Run2016Bv2_179" "SingleMuon_Run2016Bv2_206" "SingleMuon_Run2016Bv2_233" "SingleMuon_Run2016Bv2_260" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
