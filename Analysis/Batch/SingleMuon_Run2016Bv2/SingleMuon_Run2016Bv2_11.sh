#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_10" "SingleMuon_Run2016Bv2_37" "SingleMuon_Run2016Bv2_64" "SingleMuon_Run2016Bv2_91" "SingleMuon_Run2016Bv2_118" "SingleMuon_Run2016Bv2_145" "SingleMuon_Run2016Bv2_172" "SingleMuon_Run2016Bv2_199" "SingleMuon_Run2016Bv2_226" "SingleMuon_Run2016Bv2_253" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
