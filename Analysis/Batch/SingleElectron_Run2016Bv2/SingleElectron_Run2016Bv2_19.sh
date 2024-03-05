#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_18" "SingleElectron_Run2016Bv2_45" "SingleElectron_Run2016Bv2_72" "SingleElectron_Run2016Bv2_99" "SingleElectron_Run2016Bv2_126" "SingleElectron_Run2016Bv2_153" "SingleElectron_Run2016Bv2_180" "SingleElectron_Run2016Bv2_207" "SingleElectron_Run2016Bv2_234" "SingleElectron_Run2016Bv2_261" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
