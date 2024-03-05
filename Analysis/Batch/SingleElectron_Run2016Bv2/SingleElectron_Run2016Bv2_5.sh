#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_4" "SingleElectron_Run2016Bv2_31" "SingleElectron_Run2016Bv2_58" "SingleElectron_Run2016Bv2_85" "SingleElectron_Run2016Bv2_112" "SingleElectron_Run2016Bv2_139" "SingleElectron_Run2016Bv2_166" "SingleElectron_Run2016Bv2_193" "SingleElectron_Run2016Bv2_220" "SingleElectron_Run2016Bv2_247" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
