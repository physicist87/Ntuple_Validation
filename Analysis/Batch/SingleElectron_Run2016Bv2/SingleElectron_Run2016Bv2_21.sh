#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_20" "SingleElectron_Run2016Bv2_47" "SingleElectron_Run2016Bv2_74" "SingleElectron_Run2016Bv2_101" "SingleElectron_Run2016Bv2_128" "SingleElectron_Run2016Bv2_155" "SingleElectron_Run2016Bv2_182" "SingleElectron_Run2016Bv2_209" "SingleElectron_Run2016Bv2_236" "SingleElectron_Run2016Bv2_263" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
