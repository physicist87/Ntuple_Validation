#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_22" "SingleMuon_Run2016Bv2_49" "SingleMuon_Run2016Bv2_76" "SingleMuon_Run2016Bv2_103" "SingleMuon_Run2016Bv2_130" "SingleMuon_Run2016Bv2_157" "SingleMuon_Run2016Bv2_184" "SingleMuon_Run2016Bv2_211" "SingleMuon_Run2016Bv2_238" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
