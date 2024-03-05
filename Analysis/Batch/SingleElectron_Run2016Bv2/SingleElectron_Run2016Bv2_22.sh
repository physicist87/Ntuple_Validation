#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_21" "SingleElectron_Run2016Bv2_48" "SingleElectron_Run2016Bv2_75" "SingleElectron_Run2016Bv2_102" "SingleElectron_Run2016Bv2_129" "SingleElectron_Run2016Bv2_156" "SingleElectron_Run2016Bv2_183" "SingleElectron_Run2016Bv2_210" "SingleElectron_Run2016Bv2_237" "SingleElectron_Run2016Bv2_264" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
