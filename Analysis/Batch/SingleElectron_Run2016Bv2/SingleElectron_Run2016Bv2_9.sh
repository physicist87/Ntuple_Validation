#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_8" "SingleElectron_Run2016Bv2_35" "SingleElectron_Run2016Bv2_62" "SingleElectron_Run2016Bv2_89" "SingleElectron_Run2016Bv2_116" "SingleElectron_Run2016Bv2_143" "SingleElectron_Run2016Bv2_170" "SingleElectron_Run2016Bv2_197" "SingleElectron_Run2016Bv2_224" "SingleElectron_Run2016Bv2_251" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
