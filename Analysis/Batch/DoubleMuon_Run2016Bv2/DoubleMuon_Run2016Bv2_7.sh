#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_6" "DoubleMuon_Run2016Bv2_33" "DoubleMuon_Run2016Bv2_60" "DoubleMuon_Run2016Bv2_87" "DoubleMuon_Run2016Bv2_114" "DoubleMuon_Run2016Bv2_141" "DoubleMuon_Run2016Bv2_168" "DoubleMuon_Run2016Bv2_195" "DoubleMuon_Run2016Bv2_222" "DoubleMuon_Run2016Bv2_249" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
