#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_7" "SingleElectron_Run2016Bv2_34" "SingleElectron_Run2016Bv2_61" "SingleElectron_Run2016Bv2_88" "SingleElectron_Run2016Bv2_115" "SingleElectron_Run2016Bv2_142" "SingleElectron_Run2016Bv2_169" "SingleElectron_Run2016Bv2_196" "SingleElectron_Run2016Bv2_223" "SingleElectron_Run2016Bv2_250" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
