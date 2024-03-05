#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_5" "SingleElectron_Run2016D_20" "SingleElectron_Run2016D_35" "SingleElectron_Run2016D_50" "SingleElectron_Run2016D_65" "SingleElectron_Run2016D_80" "SingleElectron_Run2016D_95" "SingleElectron_Run2016D_110" "SingleElectron_Run2016D_125" "SingleElectron_Run2016D_140" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
