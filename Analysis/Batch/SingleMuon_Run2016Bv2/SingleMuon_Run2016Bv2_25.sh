#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_24" "SingleMuon_Run2016Bv2_51" "SingleMuon_Run2016Bv2_78" "SingleMuon_Run2016Bv2_105" "SingleMuon_Run2016Bv2_132" "SingleMuon_Run2016Bv2_159" "SingleMuon_Run2016Bv2_186" "SingleMuon_Run2016Bv2_213" "SingleMuon_Run2016Bv2_240" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
