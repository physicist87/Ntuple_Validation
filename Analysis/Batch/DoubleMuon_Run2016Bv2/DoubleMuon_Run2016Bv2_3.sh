#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_2" "DoubleMuon_Run2016Bv2_29" "DoubleMuon_Run2016Bv2_56" "DoubleMuon_Run2016Bv2_83" "DoubleMuon_Run2016Bv2_110" "DoubleMuon_Run2016Bv2_137" "DoubleMuon_Run2016Bv2_164" "DoubleMuon_Run2016Bv2_191" "DoubleMuon_Run2016Bv2_218" "DoubleMuon_Run2016Bv2_245" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
