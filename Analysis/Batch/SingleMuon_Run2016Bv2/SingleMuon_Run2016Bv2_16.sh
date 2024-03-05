#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("SingleMuon_Run2016Bv2_15" "SingleMuon_Run2016Bv2_42" "SingleMuon_Run2016Bv2_69" "SingleMuon_Run2016Bv2_96" "SingleMuon_Run2016Bv2_123" "SingleMuon_Run2016Bv2_150" "SingleMuon_Run2016Bv2_177" "SingleMuon_Run2016Bv2_204" "SingleMuon_Run2016Bv2_231" "SingleMuon_Run2016Bv2_258" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleMuon_Run2016Bv2 
   ./TopMass_analysis SingleMuon_Run2016Bv2/${i}.list SingleMuon_Run2016Bv2/${i}.txt 
end 
