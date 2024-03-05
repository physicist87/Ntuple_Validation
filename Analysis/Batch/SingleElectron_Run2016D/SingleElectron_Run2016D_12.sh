#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_11" "SingleElectron_Run2016D_26" "SingleElectron_Run2016D_41" "SingleElectron_Run2016D_56" "SingleElectron_Run2016D_71" "SingleElectron_Run2016D_86" "SingleElectron_Run2016D_101" "SingleElectron_Run2016D_116" "SingleElectron_Run2016D_131" "SingleElectron_Run2016D_146" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
