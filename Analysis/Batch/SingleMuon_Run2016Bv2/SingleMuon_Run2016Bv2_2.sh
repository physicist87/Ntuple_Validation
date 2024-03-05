#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_1" "SingleMuon_Run2016Bv2_28" "SingleMuon_Run2016Bv2_55" "SingleMuon_Run2016Bv2_82" "SingleMuon_Run2016Bv2_109" "SingleMuon_Run2016Bv2_136" "SingleMuon_Run2016Bv2_163" "SingleMuon_Run2016Bv2_190" "SingleMuon_Run2016Bv2_217" "SingleMuon_Run2016Bv2_244" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
