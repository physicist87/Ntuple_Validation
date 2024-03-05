#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_10" "DoubleMuon_Run2016Bv2_37" "DoubleMuon_Run2016Bv2_64" "DoubleMuon_Run2016Bv2_91" "DoubleMuon_Run2016Bv2_118" "DoubleMuon_Run2016Bv2_145" "DoubleMuon_Run2016Bv2_172" "DoubleMuon_Run2016Bv2_199" "DoubleMuon_Run2016Bv2_226" "DoubleMuon_Run2016Bv2_253" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
