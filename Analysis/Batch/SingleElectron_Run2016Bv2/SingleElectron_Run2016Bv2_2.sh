#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_1" "SingleElectron_Run2016Bv2_28" "SingleElectron_Run2016Bv2_55" "SingleElectron_Run2016Bv2_82" "SingleElectron_Run2016Bv2_109" "SingleElectron_Run2016Bv2_136" "SingleElectron_Run2016Bv2_163" "SingleElectron_Run2016Bv2_190" "SingleElectron_Run2016Bv2_217" "SingleElectron_Run2016Bv2_244" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
