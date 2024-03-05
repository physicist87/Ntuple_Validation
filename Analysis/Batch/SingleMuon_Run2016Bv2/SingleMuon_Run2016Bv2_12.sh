#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_11" "SingleMuon_Run2016Bv2_38" "SingleMuon_Run2016Bv2_65" "SingleMuon_Run2016Bv2_92" "SingleMuon_Run2016Bv2_119" "SingleMuon_Run2016Bv2_146" "SingleMuon_Run2016Bv2_173" "SingleMuon_Run2016Bv2_200" "SingleMuon_Run2016Bv2_227" "SingleMuon_Run2016Bv2_254" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
