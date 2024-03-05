#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_2" "SingleElectron_Run2016Bv2_29" "SingleElectron_Run2016Bv2_56" "SingleElectron_Run2016Bv2_83" "SingleElectron_Run2016Bv2_110" "SingleElectron_Run2016Bv2_137" "SingleElectron_Run2016Bv2_164" "SingleElectron_Run2016Bv2_191" "SingleElectron_Run2016Bv2_218" "SingleElectron_Run2016Bv2_245" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
