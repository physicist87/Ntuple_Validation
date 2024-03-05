#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_11" "SingleElectron_Run2016Bv2_38" "SingleElectron_Run2016Bv2_65" "SingleElectron_Run2016Bv2_92" "SingleElectron_Run2016Bv2_119" "SingleElectron_Run2016Bv2_146" "SingleElectron_Run2016Bv2_173" "SingleElectron_Run2016Bv2_200" "SingleElectron_Run2016Bv2_227" "SingleElectron_Run2016Bv2_254" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
