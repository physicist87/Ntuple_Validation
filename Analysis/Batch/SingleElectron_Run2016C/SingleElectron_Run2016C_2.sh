#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016C 
cmsenv 
set inputlists = ("SingleElectron_Run2016C_1" "SingleElectron_Run2016C_10" "SingleElectron_Run2016C_19" "SingleElectron_Run2016C_28" "SingleElectron_Run2016C_37" "SingleElectron_Run2016C_46" "SingleElectron_Run2016C_55" "SingleElectron_Run2016C_64" "SingleElectron_Run2016C_73" "SingleElectron_Run2016C_82" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016C 
   ./TopMass_analysis SingleElectron_Run2016C/${i}.list SingleElectron_Run2016C/${i}.txt 
end 
