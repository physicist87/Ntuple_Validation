#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_22" "SingleElectron_Run2016Bv2_49" "SingleElectron_Run2016Bv2_76" "SingleElectron_Run2016Bv2_103" "SingleElectron_Run2016Bv2_130" "SingleElectron_Run2016Bv2_157" "SingleElectron_Run2016Bv2_184" "SingleElectron_Run2016Bv2_211" "SingleElectron_Run2016Bv2_238" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
