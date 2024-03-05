#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_24" "SingleElectron_Run2016Bv2_51" "SingleElectron_Run2016Bv2_78" "SingleElectron_Run2016Bv2_105" "SingleElectron_Run2016Bv2_132" "SingleElectron_Run2016Bv2_159" "SingleElectron_Run2016Bv2_186" "SingleElectron_Run2016Bv2_213" "SingleElectron_Run2016Bv2_240" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
