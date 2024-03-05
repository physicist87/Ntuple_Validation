#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_13" "SingleElectron_Run2016D_28" "SingleElectron_Run2016D_43" "SingleElectron_Run2016D_58" "SingleElectron_Run2016D_73" "SingleElectron_Run2016D_88" "SingleElectron_Run2016D_103" "SingleElectron_Run2016D_118" "SingleElectron_Run2016D_133" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
