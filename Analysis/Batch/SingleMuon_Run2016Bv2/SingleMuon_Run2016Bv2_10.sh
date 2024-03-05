#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_9" "SingleMuon_Run2016Bv2_36" "SingleMuon_Run2016Bv2_63" "SingleMuon_Run2016Bv2_90" "SingleMuon_Run2016Bv2_117" "SingleMuon_Run2016Bv2_144" "SingleMuon_Run2016Bv2_171" "SingleMuon_Run2016Bv2_198" "SingleMuon_Run2016Bv2_225" "SingleMuon_Run2016Bv2_252" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
