#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_17" "DoubleMuon_Run2016Bv2_44" "DoubleMuon_Run2016Bv2_71" "DoubleMuon_Run2016Bv2_98" "DoubleMuon_Run2016Bv2_125" "DoubleMuon_Run2016Bv2_152" "DoubleMuon_Run2016Bv2_179" "DoubleMuon_Run2016Bv2_206" "DoubleMuon_Run2016Bv2_233" "DoubleMuon_Run2016Bv2_260" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
