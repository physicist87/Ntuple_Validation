#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_27" "DoubleMuon_Run2016Bv2_54" "DoubleMuon_Run2016Bv2_81" "DoubleMuon_Run2016Bv2_108" "DoubleMuon_Run2016Bv2_135" "DoubleMuon_Run2016Bv2_162" "DoubleMuon_Run2016Bv2_189" "DoubleMuon_Run2016Bv2_216" "DoubleMuon_Run2016Bv2_243" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
