#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_1" "SingleElectron_Run2016D_16" "SingleElectron_Run2016D_31" "SingleElectron_Run2016D_46" "SingleElectron_Run2016D_61" "SingleElectron_Run2016D_76" "SingleElectron_Run2016D_91" "SingleElectron_Run2016D_106" "SingleElectron_Run2016D_121" "SingleElectron_Run2016D_136" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
