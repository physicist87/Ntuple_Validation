#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_6" "SingleMuon_Run2016Bv2_33" "SingleMuon_Run2016Bv2_60" "SingleMuon_Run2016Bv2_87" "SingleMuon_Run2016Bv2_114" "SingleMuon_Run2016Bv2_141" "SingleMuon_Run2016Bv2_168" "SingleMuon_Run2016Bv2_195" "SingleMuon_Run2016Bv2_222" "SingleMuon_Run2016Bv2_249" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
