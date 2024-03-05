#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_10" "SingleElectron_Run2016D_25" "SingleElectron_Run2016D_40" "SingleElectron_Run2016D_55" "SingleElectron_Run2016D_70" "SingleElectron_Run2016D_85" "SingleElectron_Run2016D_100" "SingleElectron_Run2016D_115" "SingleElectron_Run2016D_130" "SingleElectron_Run2016D_145" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
