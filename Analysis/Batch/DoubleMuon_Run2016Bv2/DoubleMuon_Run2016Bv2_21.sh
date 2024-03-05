#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/DoubleMuon_Run2016Bv2 
cmsenv 
set inputlists = ("DoubleMuon_Run2016Bv2_20" "DoubleMuon_Run2016Bv2_47" "DoubleMuon_Run2016Bv2_74" "DoubleMuon_Run2016Bv2_101" "DoubleMuon_Run2016Bv2_128" "DoubleMuon_Run2016Bv2_155" "DoubleMuon_Run2016Bv2_182" "DoubleMuon_Run2016Bv2_209" "DoubleMuon_Run2016Bv2_236" "DoubleMuon_Run2016Bv2_263" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/DoubleMuon_Run2016Bv2 
   ./TopMass_analysis DoubleMuon_Run2016Bv2/${i}.list DoubleMuon_Run2016Bv2/${i}.txt 
end 
