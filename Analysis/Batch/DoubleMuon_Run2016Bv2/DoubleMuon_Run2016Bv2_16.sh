#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_15" "DoubleMuon_Run2016Bv2_42" "DoubleMuon_Run2016Bv2_69" "DoubleMuon_Run2016Bv2_96" "DoubleMuon_Run2016Bv2_123" "DoubleMuon_Run2016Bv2_150" "DoubleMuon_Run2016Bv2_177" "DoubleMuon_Run2016Bv2_204" "DoubleMuon_Run2016Bv2_231" "DoubleMuon_Run2016Bv2_258" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
