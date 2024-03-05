#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_14" "SingleElectron_Run2016Bv2_41" "SingleElectron_Run2016Bv2_68" "SingleElectron_Run2016Bv2_95" "SingleElectron_Run2016Bv2_122" "SingleElectron_Run2016Bv2_149" "SingleElectron_Run2016Bv2_176" "SingleElectron_Run2016Bv2_203" "SingleElectron_Run2016Bv2_230" "SingleElectron_Run2016Bv2_257" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
