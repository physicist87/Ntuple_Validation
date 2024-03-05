#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_12" "SingleElectron_Run2016Bv2_39" "SingleElectron_Run2016Bv2_66" "SingleElectron_Run2016Bv2_93" "SingleElectron_Run2016Bv2_120" "SingleElectron_Run2016Bv2_147" "SingleElectron_Run2016Bv2_174" "SingleElectron_Run2016Bv2_201" "SingleElectron_Run2016Bv2_228" "SingleElectron_Run2016Bv2_255" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
