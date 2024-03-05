#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016Bv2 
cmsenv 
set inputlists = ("SingleElectron_Run2016Bv2_6" "SingleElectron_Run2016Bv2_33" "SingleElectron_Run2016Bv2_60" "SingleElectron_Run2016Bv2_87" "SingleElectron_Run2016Bv2_114" "SingleElectron_Run2016Bv2_141" "SingleElectron_Run2016Bv2_168" "SingleElectron_Run2016Bv2_195" "SingleElectron_Run2016Bv2_222" "SingleElectron_Run2016Bv2_249" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016Bv2 
   ./TopMass_analysis SingleElectron_Run2016Bv2/${i}.list SingleElectron_Run2016Bv2/${i}.txt 
end 
