#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_17" "SingleElectron_Run2016Bv2_44" "SingleElectron_Run2016Bv2_71" "SingleElectron_Run2016Bv2_98" "SingleElectron_Run2016Bv2_125" "SingleElectron_Run2016Bv2_152" "SingleElectron_Run2016Bv2_179" "SingleElectron_Run2016Bv2_206" "SingleElectron_Run2016Bv2_233" "SingleElectron_Run2016Bv2_260" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
