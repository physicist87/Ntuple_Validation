#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_2" "SingleMuon_Run2016Bv2_29" "SingleMuon_Run2016Bv2_56" "SingleMuon_Run2016Bv2_83" "SingleMuon_Run2016Bv2_110" "SingleMuon_Run2016Bv2_137" "SingleMuon_Run2016Bv2_164" "SingleMuon_Run2016Bv2_191" "SingleMuon_Run2016Bv2_218" "SingleMuon_Run2016Bv2_245" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
