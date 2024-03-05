#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_26" "SingleElectron_Run2016Bv2_53" "SingleElectron_Run2016Bv2_80" "SingleElectron_Run2016Bv2_107" "SingleElectron_Run2016Bv2_134" "SingleElectron_Run2016Bv2_161" "SingleElectron_Run2016Bv2_188" "SingleElectron_Run2016Bv2_215" "SingleElectron_Run2016Bv2_242" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
