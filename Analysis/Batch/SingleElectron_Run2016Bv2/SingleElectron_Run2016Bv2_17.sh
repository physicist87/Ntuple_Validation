#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_16" "SingleElectron_Run2016Bv2_43" "SingleElectron_Run2016Bv2_70" "SingleElectron_Run2016Bv2_97" "SingleElectron_Run2016Bv2_124" "SingleElectron_Run2016Bv2_151" "SingleElectron_Run2016Bv2_178" "SingleElectron_Run2016Bv2_205" "SingleElectron_Run2016Bv2_232" "SingleElectron_Run2016Bv2_259" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
