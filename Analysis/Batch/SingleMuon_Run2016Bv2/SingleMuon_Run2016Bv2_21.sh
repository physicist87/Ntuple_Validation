#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_20" "SingleMuon_Run2016Bv2_47" "SingleMuon_Run2016Bv2_74" "SingleMuon_Run2016Bv2_101" "SingleMuon_Run2016Bv2_128" "SingleMuon_Run2016Bv2_155" "SingleMuon_Run2016Bv2_182" "SingleMuon_Run2016Bv2_209" "SingleMuon_Run2016Bv2_236" "SingleMuon_Run2016Bv2_263" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
