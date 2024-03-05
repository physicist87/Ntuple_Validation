#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_12" "SingleElectron_Run2016D_27" "SingleElectron_Run2016D_42" "SingleElectron_Run2016D_57" "SingleElectron_Run2016D_72" "SingleElectron_Run2016D_87" "SingleElectron_Run2016D_102" "SingleElectron_Run2016D_117" "SingleElectron_Run2016D_132" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
