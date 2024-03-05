#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_5" "SingleMuon_Run2016Bv2_32" "SingleMuon_Run2016Bv2_59" "SingleMuon_Run2016Bv2_86" "SingleMuon_Run2016Bv2_113" "SingleMuon_Run2016Bv2_140" "SingleMuon_Run2016Bv2_167" "SingleMuon_Run2016Bv2_194" "SingleMuon_Run2016Bv2_221" "SingleMuon_Run2016Bv2_248" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
