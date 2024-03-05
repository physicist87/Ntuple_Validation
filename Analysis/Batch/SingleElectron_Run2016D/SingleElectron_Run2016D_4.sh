#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_3" "SingleElectron_Run2016D_18" "SingleElectron_Run2016D_33" "SingleElectron_Run2016D_48" "SingleElectron_Run2016D_63" "SingleElectron_Run2016D_78" "SingleElectron_Run2016D_93" "SingleElectron_Run2016D_108" "SingleElectron_Run2016D_123" "SingleElectron_Run2016D_138" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
