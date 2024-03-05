#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_7" "SingleElectron_Run2016C_16" "SingleElectron_Run2016C_25" "SingleElectron_Run2016C_34" "SingleElectron_Run2016C_43" "SingleElectron_Run2016C_52" "SingleElectron_Run2016C_61" "SingleElectron_Run2016C_70" "SingleElectron_Run2016C_79" "SingleElectron_Run2016C_88" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
