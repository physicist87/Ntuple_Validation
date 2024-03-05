#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_3" "SingleElectron_Run2016C_12" "SingleElectron_Run2016C_21" "SingleElectron_Run2016C_30" "SingleElectron_Run2016C_39" "SingleElectron_Run2016C_48" "SingleElectron_Run2016C_57" "SingleElectron_Run2016C_66" "SingleElectron_Run2016C_75" "SingleElectron_Run2016C_84" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
