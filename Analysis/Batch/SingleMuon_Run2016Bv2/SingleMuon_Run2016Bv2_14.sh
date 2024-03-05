#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_13" "SingleMuon_Run2016Bv2_40" "SingleMuon_Run2016Bv2_67" "SingleMuon_Run2016Bv2_94" "SingleMuon_Run2016Bv2_121" "SingleMuon_Run2016Bv2_148" "SingleMuon_Run2016Bv2_175" "SingleMuon_Run2016Bv2_202" "SingleMuon_Run2016Bv2_229" "SingleMuon_Run2016Bv2_256" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
