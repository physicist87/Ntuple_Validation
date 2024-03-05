#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_24" "DoubleMuon_Run2016Bv2_51" "DoubleMuon_Run2016Bv2_78" "DoubleMuon_Run2016Bv2_105" "DoubleMuon_Run2016Bv2_132" "DoubleMuon_Run2016Bv2_159" "DoubleMuon_Run2016Bv2_186" "DoubleMuon_Run2016Bv2_213" "DoubleMuon_Run2016Bv2_240" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
