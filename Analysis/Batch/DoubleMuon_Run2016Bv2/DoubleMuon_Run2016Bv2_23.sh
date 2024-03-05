#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_22" "DoubleMuon_Run2016Bv2_49" "DoubleMuon_Run2016Bv2_76" "DoubleMuon_Run2016Bv2_103" "DoubleMuon_Run2016Bv2_130" "DoubleMuon_Run2016Bv2_157" "DoubleMuon_Run2016Bv2_184" "DoubleMuon_Run2016Bv2_211" "DoubleMuon_Run2016Bv2_238" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
