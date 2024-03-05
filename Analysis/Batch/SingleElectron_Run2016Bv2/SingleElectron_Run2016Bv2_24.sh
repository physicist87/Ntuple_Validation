#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_23" "SingleElectron_Run2016Bv2_50" "SingleElectron_Run2016Bv2_77" "SingleElectron_Run2016Bv2_104" "SingleElectron_Run2016Bv2_131" "SingleElectron_Run2016Bv2_158" "SingleElectron_Run2016Bv2_185" "SingleElectron_Run2016Bv2_212" "SingleElectron_Run2016Bv2_239" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
