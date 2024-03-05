#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_4" "SingleElectron_Run2016D_19" "SingleElectron_Run2016D_34" "SingleElectron_Run2016D_49" "SingleElectron_Run2016D_64" "SingleElectron_Run2016D_79" "SingleElectron_Run2016D_94" "SingleElectron_Run2016D_109" "SingleElectron_Run2016D_124" "SingleElectron_Run2016D_139" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
