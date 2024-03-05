#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_19" "DoubleMuon_Run2016Bv2_46" "DoubleMuon_Run2016Bv2_73" "DoubleMuon_Run2016Bv2_100" "DoubleMuon_Run2016Bv2_127" "DoubleMuon_Run2016Bv2_154" "DoubleMuon_Run2016Bv2_181" "DoubleMuon_Run2016Bv2_208" "DoubleMuon_Run2016Bv2_235" "DoubleMuon_Run2016Bv2_262" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
