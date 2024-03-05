#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_19" "SingleElectron_Run2016Bv2_46" "SingleElectron_Run2016Bv2_73" "SingleElectron_Run2016Bv2_100" "SingleElectron_Run2016Bv2_127" "SingleElectron_Run2016Bv2_154" "SingleElectron_Run2016Bv2_181" "SingleElectron_Run2016Bv2_208" "SingleElectron_Run2016Bv2_235" "SingleElectron_Run2016Bv2_262" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
