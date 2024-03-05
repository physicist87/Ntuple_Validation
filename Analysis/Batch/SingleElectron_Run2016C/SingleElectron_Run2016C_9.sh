#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_8" "SingleElectron_Run2016C_17" "SingleElectron_Run2016C_26" "SingleElectron_Run2016C_35" "SingleElectron_Run2016C_44" "SingleElectron_Run2016C_53" "SingleElectron_Run2016C_62" "SingleElectron_Run2016C_71" "SingleElectron_Run2016C_80" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
