#!/bin/tcsh 
source /cvmfs/sft.cern.ch/lcg/views/LCG_102/x86_64-centos7-gcc11-opt/setup.csh 
cd /d0/scratch/sha/Analyses/SSB/AnalysisCode/NtupleVaild_v1/CheckUpNtuple/Analysis/ 
mkdir -p ./output/SingleElectron_Run2016D 
cmsenv 
set inputlists = ("SingleElectron_Run2016D_7" "SingleElectron_Run2016D_22" "SingleElectron_Run2016D_37" "SingleElectron_Run2016D_52" "SingleElectron_Run2016D_67" "SingleElectron_Run2016D_82" "SingleElectron_Run2016D_97" "SingleElectron_Run2016D_112" "SingleElectron_Run2016D_127" "SingleElectron_Run2016D_142" ) 
foreach i ( $inputlists )
   mkdir -p output 
   mkdir -p output/SingleElectron_Run2016D 
   ./TopMass_analysis SingleElectron_Run2016D/${i}.list SingleElectron_Run2016D/${i}.txt 
end 
