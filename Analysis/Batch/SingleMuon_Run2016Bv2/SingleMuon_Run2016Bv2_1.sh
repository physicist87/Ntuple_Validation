#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_27" "SingleMuon_Run2016Bv2_54" "SingleMuon_Run2016Bv2_81" "SingleMuon_Run2016Bv2_108" "SingleMuon_Run2016Bv2_135" "SingleMuon_Run2016Bv2_162" "SingleMuon_Run2016Bv2_189" "SingleMuon_Run2016Bv2_216" "SingleMuon_Run2016Bv2_243" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
