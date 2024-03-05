#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_16" "DoubleMuon_Run2016Bv2_43" "DoubleMuon_Run2016Bv2_70" "DoubleMuon_Run2016Bv2_97" "DoubleMuon_Run2016Bv2_124" "DoubleMuon_Run2016Bv2_151" "DoubleMuon_Run2016Bv2_178" "DoubleMuon_Run2016Bv2_205" "DoubleMuon_Run2016Bv2_232" "DoubleMuon_Run2016Bv2_259" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
