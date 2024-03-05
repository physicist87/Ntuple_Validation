#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_13" "DoubleMuon_Run2016Bv2_40" "DoubleMuon_Run2016Bv2_67" "DoubleMuon_Run2016Bv2_94" "DoubleMuon_Run2016Bv2_121" "DoubleMuon_Run2016Bv2_148" "DoubleMuon_Run2016Bv2_175" "DoubleMuon_Run2016Bv2_202" "DoubleMuon_Run2016Bv2_229" "DoubleMuon_Run2016Bv2_256" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
