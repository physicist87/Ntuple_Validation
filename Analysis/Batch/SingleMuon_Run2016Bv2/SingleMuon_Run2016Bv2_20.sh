#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_19" "SingleMuon_Run2016Bv2_46" "SingleMuon_Run2016Bv2_73" "SingleMuon_Run2016Bv2_100" "SingleMuon_Run2016Bv2_127" "SingleMuon_Run2016Bv2_154" "SingleMuon_Run2016Bv2_181" "SingleMuon_Run2016Bv2_208" "SingleMuon_Run2016Bv2_235" "SingleMuon_Run2016Bv2_262" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
