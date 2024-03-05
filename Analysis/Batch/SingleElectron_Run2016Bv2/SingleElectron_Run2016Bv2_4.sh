#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_3" "SingleElectron_Run2016Bv2_30" "SingleElectron_Run2016Bv2_57" "SingleElectron_Run2016Bv2_84" "SingleElectron_Run2016Bv2_111" "SingleElectron_Run2016Bv2_138" "SingleElectron_Run2016Bv2_165" "SingleElectron_Run2016Bv2_192" "SingleElectron_Run2016Bv2_219" "SingleElectron_Run2016Bv2_246" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
