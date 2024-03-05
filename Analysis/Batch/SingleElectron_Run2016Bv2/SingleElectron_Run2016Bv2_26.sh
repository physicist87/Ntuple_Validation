#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_25" "SingleElectron_Run2016Bv2_52" "SingleElectron_Run2016Bv2_79" "SingleElectron_Run2016Bv2_106" "SingleElectron_Run2016Bv2_133" "SingleElectron_Run2016Bv2_160" "SingleElectron_Run2016Bv2_187" "SingleElectron_Run2016Bv2_214" "SingleElectron_Run2016Bv2_241" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
